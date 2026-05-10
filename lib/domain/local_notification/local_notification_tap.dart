import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_notification_tap.freezed.dart';

/// A tap event from a locally-displayed notification.
///
/// `data` is the round-tripped key/value bag the gateway sent as the
/// plugin's payload — JSON-decoded back into a Map. `id` is the
/// notification display ID assigned at `show()` time.
@freezed
abstract class LocalNotificationTap with _$LocalNotificationTap {
  const factory LocalNotificationTap({
    required int? id,
    required Map<String, Object?> data,
  }) = _LocalNotificationTap;
}
