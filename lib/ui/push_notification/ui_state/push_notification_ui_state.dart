import 'package:flutter_lab/domain/entity/push_notification/push_notification_permission.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'push_notification_ui_state.freezed.dart';

/// UI state for the PushNotificationScreen.
///
/// `permission` is `null` for the initial state before the user
/// taps the button.
@freezed
abstract class PushNotificationUiState with _$PushNotificationUiState {
  const factory PushNotificationUiState({
    AsyncValue<PushNotificationPermission>? permission,
  }) = _PushNotificationUiState;
}
