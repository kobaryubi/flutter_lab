package com.example.flutter_lab

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    companion object {
        private const val LOCATION_CHANNEL = "com.masahikokobayashi/location"
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, LOCATION_CHANNEL)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "getLocation" -> {
                        // TODO: Implement location retrieval
                        result.notImplemented()
                    }
                    else -> result.notImplemented()
                }
            }
    }
}
