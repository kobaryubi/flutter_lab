package com.masahikokobayashi.flutterlab

import android.Manifest
import android.content.Context
import android.content.pm.PackageManager
import android.location.Location
import android.location.LocationListener
import android.location.LocationManager
import android.os.BatteryManager
import androidx.core.content.ContextCompat
import com.masahikokobayashi.flutterlab.pigeon.ArutanaHostApi
import com.masahikokobayashi.flutterlab.pigeon.Code
import com.masahikokobayashi.flutterlab.pigeon.ExampleHostApi
import com.masahikokobayashi.flutterlab.pigeon.FlutterError
import com.masahikokobayashi.flutterlab.pigeon.GreetingApi
import com.masahikokobayashi.flutterlab.pigeon.MessageData
import com.masahikokobayashi.flutterlab.pigeon.MessageFlutterApi
import com.masahikokobayashi.flutterlab.pigeon.ProfilePassportHostApi
import com.masahikokobayashi.flutterlab.pigeon.gateway.ArutanaHostApiImpl
import com.masahikokobayashi.flutterlab.pigeon.gateway.ProfilePassportHostApiImpl
import com.masahikokobayashi.flutterlab.infrastructure.platform.ErrorCodes
import com.masahikokobayashi.flutterlab.infrastructure.platform.EventChannelNames
import com.masahikokobayashi.flutterlab.infrastructure.platform.MethodChannelNames
import com.masahikokobayashi.flutterlab.infrastructure.platform.MethodNames
import com.masahikokobayashi.flutterlab.infrastructure.platform.NativeButtonFactory
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

/// Pigeon GreetingApi implementation for Android.
private class GreetingApiImpl : GreetingApi {
    override fun greet(name: String): String {
        return "Hello, $name!"
    }
}

/// Pigeon FlutterApi wrapper for calling Dart-side methods from native.
private class PigeonFlutterApi(binaryMessenger: BinaryMessenger) {
    var flutterApi: MessageFlutterApi? = null

    init {
        flutterApi = MessageFlutterApi(binaryMessenger)
    }

    /// Calls the Dart-side flutterMethod and returns the result via callback.
    fun callFlutterMethod(aString: String, callback: (Result<String>) -> Unit) {
        flutterApi!!.flutterMethod(aString) { echo -> callback(echo) }
    }
}

/// Pigeon ExampleHostApi implementation for Android.
private class ExampleHostApiImpl : ExampleHostApi {
    override fun getHostLanguage(): String {
        return "Kotlin"
    }

    override fun add(a: Long, b: Long): Long {
        if (a < 0L || b < 0L) {
            throw FlutterError("code", "message", "details")
        }
        return a + b
    }

    override fun sendMessage(message: MessageData, callback: (Result<Boolean>) -> Unit) {
        if (message.code == Code.ONE) {
            callback(Result.failure(FlutterError("code", "message", "details")))
            return
        }
        callback(Result.success(true))
    }
}

class MainActivity : FlutterActivity(), EventChannel.StreamHandler, LocationListener {
    private var eventSink: EventChannel.EventSink? = null
    private var locationManager: LocationManager? = null
    private var pigeonFlutterApi: PigeonFlutterApi? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        // Register Pigeon GreetingApi
        GreetingApi.setUp(flutterEngine.dartExecutor.binaryMessenger, GreetingApiImpl())

        // Register Pigeon ArutanaHostApi
        ArutanaHostApi.setUp(flutterEngine.dartExecutor.binaryMessenger, ArutanaHostApiImpl())

        // Register Pigeon ExampleHostApi
        ExampleHostApi.setUp(flutterEngine.dartExecutor.binaryMessenger, ExampleHostApiImpl())

        // Register Pigeon ProfilePassportHostApi
        ProfilePassportHostApi.setUp(flutterEngine.dartExecutor.binaryMessenger, ProfilePassportHostApiImpl(this))

        // Register Pigeon FlutterApi (native → Dart)
        pigeonFlutterApi = PigeonFlutterApi(flutterEngine.dartExecutor.binaryMessenger)

        locationManager = getSystemService(LOCATION_SERVICE) as LocationManager

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, MethodChannelNames.LOCATION)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    MethodNames.GET_LOCATION -> getLocation(result)
                    MethodNames.WATCH_LOCATION -> watchLocation(result)
                    else -> result.notImplemented()
                }
            }

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, MethodChannelNames.BATTERY)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    MethodNames.GET_BATTERY_LEVEL -> getBatteryLevel(result)
                    else -> result.notImplemented()
                }
            }

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, MethodChannelNames.PIGEON)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    MethodNames.CALL_FLUTTER_METHOD -> callFlutterMethod(call, result)
                    else -> result.notImplemented()
                }
            }

        flutterEngine.platformViewsController.registry.registerViewFactory(
            "nativeButton",
            NativeButtonFactory(flutterEngine.dartExecutor.binaryMessenger)
        )

        EventChannel(flutterEngine.dartExecutor.binaryMessenger, EventChannelNames.LOCATION_UPDATES)
            .setStreamHandler(this)
    }

    /// Retrieves the device's current battery level as a percentage.
    private fun getBatteryLevel(result: MethodChannel.Result) {
        val batteryManager = getSystemService(Context.BATTERY_SERVICE) as BatteryManager
        val batteryLevel = batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)

        if (batteryLevel != Int.MIN_VALUE) {
            result.success(batteryLevel)
        } else {
            result.error(ErrorCodes.UNAVAILABLE, "Battery level not available.", null)
        }
    }

    /// Calls the Dart-side flutterMethod via Pigeon FlutterApi.
    private fun callFlutterMethod(call: MethodCall, result: MethodChannel.Result) {
        val message = call.argument<String>("message")

        if (message == null) {
            result.error(ErrorCodes.INVALID_ARGUMENT, "Missing 'message' argument.", null)
            return
        }

        pigeonFlutterApi?.callFlutterMethod(message) { echoResult ->
            echoResult.onSuccess { value ->
                result.success(value)
            }.onFailure { error ->
                result.error(ErrorCodes.UNAVAILABLE, error.message, null)
            }
        }
    }

    /// Retrieves the device's last known GPS location.
    private fun getLocation(result: MethodChannel.Result) {
        val hasPermission = ContextCompat.checkSelfPermission(
            this,
            Manifest.permission.ACCESS_FINE_LOCATION
        ) == PackageManager.PERMISSION_GRANTED

        if (!hasPermission) {
            result.error(ErrorCodes.PERMISSION_DENIED, "Location permission denied.", null)
            return
        }

        val location = locationManager?.getLastKnownLocation(LocationManager.GPS_PROVIDER)

        if (location == null) {
            result.error(ErrorCodes.UNAVAILABLE, "Location not available.", null)
            return
        }

        result.success(location.toMap())
    }

    /// Starts continuous GPS location updates.
    private fun watchLocation(result: MethodChannel.Result) {
        val hasPermission = ContextCompat.checkSelfPermission(
            this,
            Manifest.permission.ACCESS_FINE_LOCATION
        ) == PackageManager.PERMISSION_GRANTED

        if (!hasPermission) {
            result.error(ErrorCodes.PERMISSION_DENIED, "Location permission denied.", null)
            return
        }

        locationManager?.requestLocationUpdates(
            LocationManager.GPS_PROVIDER,
            1000L,
            0f,
            this
        )
        result.success(null)
    }

    // EventChannel.StreamHandler

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        eventSink = events
    }

    override fun onCancel(arguments: Any?) {
        locationManager?.removeUpdates(this)
        eventSink = null
    }

    // LocationListener

    override fun onLocationChanged(location: Location) {
        eventSink?.success(location.toMap())
    }

    /// Converts an Android [Location] to a map with latitude and longitude.
    private fun Location.toMap(): Map<String, Double> =
        mapOf(
            "latitude" to latitude,
            "longitude" to longitude
        )
}
