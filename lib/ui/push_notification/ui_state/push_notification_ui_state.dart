import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_notification_ui_state.freezed.dart';

/// UI state for the PushNotificationScreen.
@freezed
abstract class PushNotificationUiState with _$PushNotificationUiState {
  const factory PushNotificationUiState() = _PushNotificationUiState;
}
