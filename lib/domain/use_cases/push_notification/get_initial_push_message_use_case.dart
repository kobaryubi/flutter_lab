import 'package:flutter_lab/domain/entity/push_notification/push_message.dart';
import 'package:flutter_lab/domain/push_notification/push_message_service.dart';
import 'package:flutter_lab/domain/push_notification/push_notification_repository.dart';

/// Returns the message that opened the app from a terminated state.
class GetInitialPushMessageUseCase {
  GetInitialPushMessageUseCase({
    required PushNotificationRepository pushNotificationRepository,
    required PushMessageService pushMessageService,
  }) : _pushNotificationRepository = pushNotificationRepository,
       _pushMessageService = pushMessageService;

  final PushNotificationRepository _pushNotificationRepository;
  final PushMessageService _pushMessageService;

  /// Resolves to `null` if the app was not launched by tapping a
  /// notification. The non-null message is passed through
  /// [PushMessageService] so all entry points apply the same domain logic.
  Future<PushMessage?> call() async {
    final message = await _pushNotificationRepository.getInitialMessage();

    return message == null
        ? null
        : _pushMessageService.handle(message: message);
  }
}
