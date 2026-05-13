import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_notification_data.freezed.dart';

/// The data carried by a locally-displayed notification tap.
///
/// `data` is the round-tripped key/value bag the gateway sent as the
/// plugin's payload — JSON-decoded back into a Map.
@freezed
abstract class LocalNotificationData with _$LocalNotificationData {
  const factory LocalNotificationData({
    required Map<String, Object?> data,
  }) = _LocalNotificationData;
}
