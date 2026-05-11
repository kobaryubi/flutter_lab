import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_message_data.freezed.dart';

/// The data payload of a `PushMessage`, abstracted from the FCM SDK's
/// raw `Map<String, dynamic>` data block.
///
/// Carries the routing target so the presentation layer can navigate
/// without inspecting untyped map keys.
@freezed
abstract class PushMessageData with _$PushMessageData {
  const factory PushMessageData({
    required String targetScreen,
  }) = _PushMessageData;
}
