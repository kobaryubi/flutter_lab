import 'package:flutter_lab/domain/push_notification/push_notification_repository.dart';

/// Provides a stream of push token refresh events.
class OnPushTokenRefreshUseCase {
  OnPushTokenRefreshUseCase({
    required PushNotificationRepository pushNotificationRepository,
  }) : _pushNotificationRepository = pushNotificationRepository;

  final PushNotificationRepository _pushNotificationRepository;

  /// Returns a stream that emits a new token whenever the push token
  /// is refreshed.
  Stream<String> call() => _pushNotificationRepository.onPushTokenRefresh;
}
