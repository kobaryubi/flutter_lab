import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'max_ui_state.freezed.dart';

/// UI state for the MAX SDK rewarded ads demo screen.
@freezed
abstract class MaxUiState with _$MaxUiState {
  const factory MaxUiState({
    /// Result of loading a rewarded ad.
    ///
    /// `true` when the ad is loaded and ready to be shown.
    AsyncValue<bool>? loadRewardedAd,

    /// Result of showing a rewarded ad.
    ///
    /// `true` if the user earned a reward.
    AsyncValue<bool>? showRewardedAd,
  }) = _MaxUiState;
}
