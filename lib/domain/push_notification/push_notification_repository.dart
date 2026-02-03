import 'package:result_dart/result_dart.dart';

/// Repository interface for push notification operations.
///
/// No platform SDK types leak into the domain layer.
abstract class PushNotificationRepository {
  /// Requests notification permission and returns the authorization status.
  Future<String> requestPermission();

  /// Returns the APNs token (iOS only), or `null` on other platforms.
  Future<String?> getApnsToken();

  /// Returns the current device registration token.
  Future<String?> getDeviceToken();

  /// Stream that emits a new token whenever the FCM token is refreshed.
  Stream<String> get onTokenRefresh;

  /// Sends the given [token] to the server for registration.
  AsyncResult<Unit> registerToken({required String token});
}
