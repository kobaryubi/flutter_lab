import 'package:flutter_lab/domain/entity/push_notification/push_message.dart';
import 'package:flutter_lab/domain/push_notification/push_notification_repository.dart';

/// Provides a stream of messages whose tap opened the app from the
/// background.
class WatchOpenedPushMessageUseCase {
  WatchOpenedPushMessageUseCase({
    required PushNotificationRepository pushNotificationRepository,
  }) : _pushNotificationRepository = pushNotificationRepository;

  final PushNotificationRepository _pushNotificationRepository;

  /// Returns a stream that emits whenever the user taps a notification
  /// while the app is in the background.
  Stream<PushMessage> call() => _pushNotificationRepository.onMessageOpenedApp;
}
