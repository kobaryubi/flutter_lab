import 'package:flutter_lab/domain/push_notification/push_notification_repository.dart';

/// Provides a stream of FCM token refresh events.
class OnTokenRefreshUseCase {
  OnTokenRefreshUseCase({
    required PushNotificationRepository pushNotificationRepository,
  }) : _pushNotificationRepository = pushNotificationRepository;

  final PushNotificationRepository _pushNotificationRepository;

  /// Returns a stream that emits a new token whenever the FCM token
  /// is refreshed.
  Stream<String> call() => _pushNotificationRepository.onTokenRefresh;
}
