import 'package:flutter_lab/domain/entity/push_notification/push_message.dart';
import 'package:flutter_lab/domain/push_notification/push_message_service.dart';
import 'package:flutter_lab/domain/push_notification/push_notification_repository.dart';

/// Provides a stream of messages whose tap opened the app from the
/// background.
class WatchOpenedPushMessageUseCase {
  WatchOpenedPushMessageUseCase({
    required PushNotificationRepository pushNotificationRepository,
    required PushMessageService pushMessageService,
  }) : _pushNotificationRepository = pushNotificationRepository,
       _pushMessageService = pushMessageService;

  final PushNotificationRepository _pushNotificationRepository;
  final PushMessageService _pushMessageService;

  /// Returns a stream that emits whenever the user taps a notification
  /// while the app is in the background. Each message is passed through
  /// [PushMessageService] so all watchers apply the same domain logic.
  Stream<PushMessage> call() => _pushNotificationRepository.onMessageOpenedApp
      .map((message) => _pushMessageService.handle(message: message));
}
