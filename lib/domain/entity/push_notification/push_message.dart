import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_message.freezed.dart';

/// A push notification payload, abstracted from the FCM SDK.
///
/// Domain-layer representation so use cases and presentation code do not
/// depend on `RemoteMessage` from `firebase_messaging`.
@freezed
abstract class PushMessage with _$PushMessage {
  const factory PushMessage({
    required String? messageId,
    required String? title,
    required String? body,
    required Map<String, Object?> data,
  }) = _PushMessage;
}
