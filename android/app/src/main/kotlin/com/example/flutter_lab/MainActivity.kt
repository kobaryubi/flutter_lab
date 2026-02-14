package com.example.flutter_lab

import android.Manifest
import android.content.pm.PackageManager
import android.location.Location
import android.location.LocationListener
import android.location.LocationManager
import androidx.core.content.ContextCompat
import com.example.flutter_lab.infrastructure.platform.ErrorCodes
import com.example.flutter_lab.infrastructure.platform.EventChannelNames
import com.example.flutter_lab.infrastructure.platform.MethodChannelNames
import com.example.flutter_lab.infrastructure.platform.MethodNames
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity(), EventChannel.StreamHandler, LocationListener {
    private var eventSink: EventChannel.EventSink? = null
    private var locationManager: LocationManager? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        locationManager = getSystemService(LOCATION_SERVICE) as LocationManager

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, MethodChannelNames.LOCATION)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    MethodNames.GET_LOCATION -> getLocation(result)
                    MethodNames.WATCH_LOCATION -> watchLocation(result)
                    else -> result.notImplemented()
                }
            }

        EventChannel(flutterEngine.dartExecutor.binaryMessenger, EventChannelNames.LOCATION_UPDATES)
            .setStreamHandler(this)
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
