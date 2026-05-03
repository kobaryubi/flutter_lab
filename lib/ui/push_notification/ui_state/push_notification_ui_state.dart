import 'package:flutter_lab/domain/entity/push_notification/push_message.dart';
import 'package:flutter_lab/domain/entity/push_notification/push_notification_permission.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'push_notification_ui_state.freezed.dart';

/// UI state for the PushNotificationScreen.
///
/// `permission` is `null` for the initial state before the user taps
/// the request button. `rotation` is `null` until the user taps the
/// rotate-token button at least once.
@freezed
abstract class PushNotificationUiState with _$PushNotificationUiState {
  const factory PushNotificationUiState({
    AsyncValue<PushNotificationPermission>? permission,
    AsyncValue<void>? rotation,

    /// Message that opened the app from a terminated state, or `null`.
    /// Resolved once on screen entry.
    AsyncValue<PushMessage?>? initialMessage,

    /// Messages whose tap opened the app from the background, in
    /// arrival order while the screen is mounted.
    @Default([]) List<PushMessage> openedMessages,

    /// Messages received while the app is in the foreground, in
    /// arrival order while the screen is mounted.
    @Default([]) List<PushMessage> foregroundMessages,
  }) = _PushNotificationUiState;
}
