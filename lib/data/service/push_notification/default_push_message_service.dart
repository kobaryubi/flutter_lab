import 'package:flutter_lab/domain/entity/push_notification/push_message.dart';
import 'package:flutter_lab/domain/push_notification/push_message_service.dart';

/// Default [PushMessageService] implementation.
///
/// Currently a pass-through; extend this implementation to add validation,
/// enrichment, or routing decisions that should apply to every push
/// message uniformly.
class DefaultPushMessageService implements PushMessageService {
  const DefaultPushMessageService();

  @override
  PushMessage handle({required PushMessage message}) => message;
}
