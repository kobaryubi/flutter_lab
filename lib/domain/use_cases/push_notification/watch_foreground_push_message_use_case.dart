import 'package:flutter_lab/domain/entity/push_notification/push_message.dart';
import 'package:flutter_lab/domain/push_notification/push_notification_repository.dart';

/// Provides a stream of messages received while the app is in the
/// foreground.
class WatchForegroundPushMessageUseCase {
  WatchForegroundPushMessageUseCase({
    required PushNotificationRepository pushNotificationRepository,
  }) : _pushNotificationRepository = pushNotificationRepository;

  final PushNotificationRepository _pushNotificationRepository;

  /// Returns a stream that emits each foreground push notification.
  Stream<PushMessage> call() => _pushNotificationRepository.onForegroundMessage;
}
