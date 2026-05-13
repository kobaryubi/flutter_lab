import 'package:flutter_lab/domain/entity/push_notification/push_message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flutter_lab_app_ui_state.freezed.dart';

/// UI state for the FlutterLabApp.
///
/// [lastOpenedPushMessage] is the most recent push-notification tap
/// observed at the app level, or `null` if no tap has been observed.
/// The widget layer reacts to changes here to perform navigation.
@freezed
abstract class FlutterLabAppUiState with _$FlutterLabAppUiState {
  const factory FlutterLabAppUiState({
    PushMessage? lastOpenedPushMessage,
  }) = _FlutterLabAppUiState;
}
