import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_notification_setup.freezed.dart';

/// Represents the result of push notification setup.
@freezed
abstract class PushNotificationSetup with _$PushNotificationSetup {
  const factory PushNotificationSetup({
    required String authorizationStatus,
    required String? deviceToken,
  }) = _PushNotificationSetup;
}
