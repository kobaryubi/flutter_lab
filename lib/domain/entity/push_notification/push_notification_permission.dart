import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_notification_permission.freezed.dart';

/// Represents the result of requesting push notification permission.
@freezed
abstract class PushNotificationPermission with _$PushNotificationPermission {
  const factory PushNotificationPermission({
    required String authorizationStatus,
    required String? deviceToken,
  }) = _PushNotificationPermission;
}
