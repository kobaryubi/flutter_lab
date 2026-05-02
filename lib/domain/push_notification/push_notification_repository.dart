import 'package:result_dart/result_dart.dart';

/// Repository interface for push notification operations.
///
/// No platform SDK types leak into the domain layer.
abstract class PushNotificationRepository {
  /// Requests notification permission and returns the authorization status.
  Future<String> requestPermission();

  /// Returns the APNs token (iOS only), or `null` on other platforms.
  Future<String?> getApnsToken();

  /// Returns the current push token.
  Future<String?> getPushToken();

  /// Stream that emits a new token whenever the push token is refreshed.
  Stream<String> get onPushTokenRefresh;

  /// Deletes the current push token and provisions a new one.
  ///
  /// Use this to force a refresh from a debug action; the new token is
  /// delivered through [onPushTokenRefresh].
  AsyncResult<Unit> rotatePushToken();

  /// Sends the given [token] to the server for registration.
  AsyncResult<Unit> registerToken({required String token});
}
