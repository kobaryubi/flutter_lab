import 'package:flutter_lab/domain/entity/push_notification/push_message.dart';
import 'package:flutter_lab/domain/push_notification/push_notification_repository.dart';

/// Returns the message that opened the app from a terminated state.
class WatchInitialPushMessageUseCase {
  WatchInitialPushMessageUseCase({
    required PushNotificationRepository pushNotificationRepository,
  }) : _pushNotificationRepository = pushNotificationRepository;

  final PushNotificationRepository _pushNotificationRepository;

  /// Resolves to `null` if the app was not launched by tapping a
  /// notification.
  Future<PushMessage?> call() =>
      _pushNotificationRepository.getInitialMessage();
}
