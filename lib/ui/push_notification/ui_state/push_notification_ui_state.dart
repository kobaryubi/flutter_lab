import 'package:flutter_lab/domain/entity/push_notification/push_notification_setup.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_notification_ui_state.freezed.dart';

/// UI state for the PushNotificationScreen.
///
/// `setup` is `null` for the initial state before the user taps the button.
@freezed
abstract class PushNotificationUiState with _$PushNotificationUiState {
  const factory PushNotificationUiState({
    PushNotificationSetup? setup,
    String? error,
  }) = _PushNotificationUiState;
}
