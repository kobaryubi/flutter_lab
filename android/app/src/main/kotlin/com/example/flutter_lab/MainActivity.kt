package com.example.flutter_lab

import com.example.flutter_lab.infrastructure.platform.MethodChannelNames
import com.example.flutter_lab.infrastructure.platform.MethodNames
import com.example.flutter_lab.infrastructure.system.repository.SystemLocationRepository
import com.example.flutter_lab.usecase.location.GetLocationUseCase
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, MethodChannelNames.LOCATION).setMethodCallHandler { call, result ->
            if (call.method == MethodNames.GET_LOCATION) {
                val getLocationUseCase = GetLocationUseCase(SystemLocationRepository())
                val location = mapOf(
                    "latitude" to 35.6895,
                    "longitude" to 139.6917
                )
                result.success(location)
            }
        }
    }
}
