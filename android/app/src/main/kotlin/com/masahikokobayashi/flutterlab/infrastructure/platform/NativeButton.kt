package com.masahikokobayashi.flutterlab.infrastructure.platform

import android.content.Context
import android.view.View
import android.widget.Button
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.platform.PlatformView

/// Platform view that displays a native Button and sends tap events to Flutter.
class NativeButton(
    context: Context,
    viewId: Int,
    args: Any?,
    messenger: BinaryMessenger,
) : PlatformView {
    private val button: Button = Button(context)
    private val channel: MethodChannel =
        MethodChannel(messenger, "com.masahikokobayashi/nativeButton")

    init {
        button.text = "Native Button"
        button.setOnClickListener { handleTap() }
    }

    override fun getView(): View = button

    override fun dispose() {}

    /// Sends a tap event to Flutter via the method channel.
    private fun handleTap() {
        channel.invokeMethod("onTap", null)
    }
}
