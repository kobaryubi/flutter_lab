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
  void show({required String title, required String body});
}
