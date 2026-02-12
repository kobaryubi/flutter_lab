package com.example.flutter_lab

import android.Manifest
import android.content.pm.PackageManager
import android.location.LocationManager
import androidx.core.content.ContextCompat
import com.example.flutter_lab.infrastructure.platform.MethodChannelNames
import com.example.flutter_lab.infrastructure.platform.MethodNames
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, MethodChannelNames.LOCATION)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    MethodNames.GET_LOCATION -> getLocation(result)
                    else -> result.notImplemented()
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
            result.error("PERMISSION_DENIED", "Location permission denied.", null)
            return
        }

        val locationManager = getSystemService(LOCATION_SERVICE) as LocationManager
        val location = locationManager.getLastKnownLocation(LocationManager.GPS_PROVIDER)

        if (location == null) {
            result.error("UNAVAILABLE", "Location not available.", null)
            return
        }

        result.success(
            mapOf(
                "latitude" to location.latitude,
                "longitude" to location.longitude
            )
        )
    }
}
