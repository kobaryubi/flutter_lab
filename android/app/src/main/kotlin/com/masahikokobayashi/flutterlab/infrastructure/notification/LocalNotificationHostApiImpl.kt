package com.masahikokobayashi.flutterlab.infrastructure.notification

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import com.masahikokobayashi.flutterlab.R
import com.masahikokobayashi.flutterlab.pigeon.LocalNotificationHostApi

/// Intent extra key under which [LocalNotificationHostApiImpl.show] stores
/// the notification payload for tap handling in MainActivity.
///
/// "Extras" are a key/value bag carried by an Intent. The whole payload
/// map is stored under this single namespaced key (rather than one extra
/// per FCM key) so it cannot collide with extras the system itself puts
/// on the launch intent, and MainActivity can read it back in one call.
const val EXTRA_LOCAL_NOTIFICATION_PAYLOAD = "local_notification_payload"

/// Channel for FCM messages received while the app is in the foreground.
///
/// Since Android 8.0, every notification must belong to a "channel" — a
/// user-visible category (shown in the OS notification settings) that owns
/// the importance, sound, and vibration settings. IMPORTANCE_DEFAULT shows
/// the notification in the tray with sound but without a heads-up banner;
/// banners only appear with IMPORTANCE_HIGH.
private const val CHANNEL_ID = "foreground_push"

/// Human-readable channel name shown in the OS notification settings UI.
private const val CHANNEL_NAME = "Foreground Push Notifications"

/// Pigeon LocalNotificationHostApi implementation for Android.
///
/// [currentIntent] is a lambda (not an Intent value) because the Intent
/// that launched the activity is only known to the activity itself and
/// can change over its lifetime; the lambda lets this class read the
/// latest one lazily without holding a reference to the activity.
class LocalNotificationHostApiImpl(
    private val context: Context,
    private val currentIntent: () -> Intent?
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

        // getSystemService is Android's service locator for OS-level
        // singletons; NotificationManager is the system service that owns
        // channels and the notification tray.
        val notificationManager = context.getSystemService(NotificationManager::class.java)
        notificationManager.createNotificationChannel(channel)
    }

    override fun show(title: String, body: String, payload: Map<String, String>) {
        // The launch intent is the same Intent the home-screen launcher
        // uses to open this app (it targets MainActivity). It is null only
        // when the package has no launcher activity, so bail out early.
        // `?:` is Kotlin's elvis operator: "if null, evaluate the right side".
        val launchIntent =
            context.packageManager.getLaunchIntentForPackage(context.packageName) ?: return

        // Attach the payload so it survives until the user taps the
        // notification. HashMap is used because Intent extras only accept
        // Serializable containers, and Kotlin's Map interface is not one.
        launchIntent.putExtra(EXTRA_LOCAL_NOTIFICATION_PAYLOAD, HashMap(payload))

        // Each notification gets its own ID so successive messages do not
        // overwrite each other in the tray.
        val notificationId = (System.currentTimeMillis() % Int.MAX_VALUE).toInt()

        // A PendingIntent wraps the Intent so another process — here the
        // system tray, which lives outside this app — can fire it later with
        // this app's identity. FLAG_IMMUTABLE (required on Android 12+)
        // forbids other apps from modifying it; FLAG_UPDATE_CURRENT refreshes
        // the extras when a PendingIntent with the same request code already
        // exists. The notification ID doubles as the request code: request
        // code + intent identity is the PendingIntent's uniqueness key, so
        // reusing one code would make every notification share the extras of
        // the most recent one.
        val pendingIntent = PendingIntent.getActivity(
            context,
            notificationId,
            launchIntent,
            PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
        )

        // Assemble what the tray entry looks like and does. The channel ID
        // ties it to the IMPORTANCE_DEFAULT channel created above, which is
        // what keeps it banner-free. setAutoCancel makes the entry dismiss
        // itself once tapped.
        val notification = Notification.Builder(context, CHANNEL_ID)
            .setSmallIcon(R.drawable.ic_notification)
            .setContentTitle(title)
            .setContentText(body)
            .setContentIntent(pendingIntent)
            .setAutoCancel(true)
            .build()

        // Hand the notification to the OS; from here on the tray owns it.
        context.getSystemService(NotificationManager::class.java)
            .notify(notificationId, notification)
    }

    override fun getInitialPayload(): Map<String, String>? {
        val intent = currentIntent() ?: return null

        // Read back the HashMap stored by show(). getSerializableExtra
        // returns null when the extra is absent — i.e. the app was opened
        // from the launcher or a deep link, not a notification tap.
        // The single-argument overload is deprecated since API 33 in favor
        // of a typed one, but the typed overload is unavailable below 33
        // (minSdk 29), so the deprecated call is suppressed instead of
        // branching on the OS version.
        @Suppress("DEPRECATION", "UNCHECKED_CAST")
        val payload =
            intent.getSerializableExtra(EXTRA_LOCAL_NOTIFICATION_PAYLOAD) as? HashMap<String, String>

        return payload
    }
}
