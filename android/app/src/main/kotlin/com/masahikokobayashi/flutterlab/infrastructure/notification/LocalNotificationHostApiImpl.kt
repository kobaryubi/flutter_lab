package com.masahikokobayashi.flutterlab.infrastructure.notification

import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.Context
import com.masahikokobayashi.flutterlab.pigeon.LocalNotificationHostApi

/// Channel for FCM messages received while the app is in the foreground.
/// IMPORTANCE_DEFAULT shows the notification in the tray with sound but
/// without a heads-up banner.
private const val CHANNEL_ID = "foreground_push"
private const val CHANNEL_NAME = "Foreground Push Notifications"

/// Pigeon LocalNotificationHostApi implementation for Android.
class LocalNotificationHostApiImpl(
    private val context: Context
) : LocalNotificationHostApi {

    /// Creates the notification channel used by [show]. Creating a channel
    /// that already exists is a no-op, so this is safe to call on every
    /// app launch.
    fun createChannel() {
        val channel = NotificationChannel(
            CHANNEL_ID,
            CHANNEL_NAME,
            NotificationManager.IMPORTANCE_DEFAULT
        )
        val notificationManager = context.getSystemService(NotificationManager::class.java)
        notificationManager.createNotificationChannel(channel)
    }

    override fun show(title: String, body: String, payload: Map<String, String>) {
        // Notification building and notify() are implemented in the next step.
    }
}
