import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'adjust_deferred_deeplink_ui_state.freezed.dart';

/// UI state for the Adjust deferred deep link sample screen.
@freezed
abstract class AdjustDeferredDeeplinkUiState
    with _$AdjustDeferredDeeplinkUiState {
  const factory AdjustDeferredDeeplinkUiState({
    required String? pendingDeeplink,

    /// Result of fetching the Adjust Device Identifier (ADID).
    AsyncValue<String>? adid,
  }) = _AdjustDeferredDeeplinkUiState;
}
