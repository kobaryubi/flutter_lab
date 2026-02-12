package com.example.flutter_lab

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
                    MethodNames.GET_LOCATION -> {
                        // TODO: Implement location retrieval
                        result.notImplemented()
                    }
                    else -> result.notImplemented()
                }
            }
    }
}
