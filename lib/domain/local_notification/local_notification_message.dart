import 'package:flutter_lab/domain/local_notification/local_notification_channel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_notification_message.freezed.dart';

/// Message displayed locally by `LocalNotificationGateway.show`.
///
/// `id` is the notification display ID — distinct from the FCM
/// `messageId`. Reusing the same ID overwrites the prior notification.
///
/// `data` is an opaque key/value bag carried alongside the notification
/// (e.g. for deep-link routing on tap). It is JSON-encoded by the
/// gateway and round-tripped back via the plugin's tap callback.
@freezed
abstract class LocalNotificationMessage with _$LocalNotificationMessage {
  const factory LocalNotificationMessage({
    required int id,
    required String title,
    required String body,
    required LocalNotificationChannel channel,
    required String? imageUrl,
    @Default(<String, Object?>{}) Map<String, Object?> data,
  }) = _LocalNotificationMessage;
}
