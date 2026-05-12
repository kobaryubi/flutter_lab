import 'package:flutter_lab/domain/entity/push_notification/push_message.dart';

/// Domain service that applies shared logic to every [PushMessage] flowing
/// through the system, regardless of whether the message arrived in the
/// foreground, opened the app from the background, or launched it from a
/// terminated state.
///
/// Lives in the domain layer: no router, no `BuildContext`, no platform
/// SDK types. Injected into the watcher / initial-message use cases so they
/// each apply the same processing before exposing the message upward.
abstract class PushMessageService {
  /// Applies shared domain logic to [message] and returns the (possibly
  /// transformed) result.
  PushMessage handle({required PushMessage message});
}
