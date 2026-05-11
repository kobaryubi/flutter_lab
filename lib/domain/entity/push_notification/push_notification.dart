import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_notification.freezed.dart';

/// The notification block of a `PushMessage`, abstracted from the FCM
/// SDK's `RemoteNotification`.
///
/// Always present on `PushMessage`; for data-only FCM messages, `title`
/// and `body` fall back to empty strings.
@freezed
abstract class PushNotification with _$PushNotification {
  const factory PushNotification({
    required String title,
    required String body,
  }) = _PushNotification;
}
