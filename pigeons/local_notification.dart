import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/gen/pigeon/local_notification.g.dart',
    kotlinOut:
        'android/app/src/main/kotlin/com/masahikokobayashi/flutterlab/pigeon/LocalNotification.g.kt',
    kotlinOptions: KotlinOptions(
      package: 'com.masahikokobayashi.flutterlab.pigeon',
      includeErrorClass: false,
    ),
    dartPackageName: 'flutter_lab',
  ),
)
/// Pigeon host API for displaying local notifications on Android.
///
/// Used to surface FCM messages received while the app is in the
/// foreground, since Android does not display them automatically.
@HostApi()
abstract class LocalNotificationHostApi {
  /// Shows a notification in the system tray with the given [title]
  /// and [body].
  ///
  /// [payload] is an opaque key/value bag (typically the FCM data
  /// payload) attached to the tap intent so it can be delivered back
  /// to Dart when the user taps the notification.
  void show({
    required String title,
    required String body,
    required Map<String, String> payload,
  });

  /// Returns the payload of the notification tap that launched the app
  /// from a terminated state, or `null` if the app was opened any other
  /// way (launcher, deep link, ...).
  Map<String, String>? getInitialPayload();
}
