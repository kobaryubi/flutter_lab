import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:result_dart/result_dart.dart';

part 'max_ui_state.freezed.dart';

/// UI state for the MAX SDK rewarded ads demo screen.
@freezed
abstract class MaxUiState with _$MaxUiState {
  const factory MaxUiState({
    /// Result of loading a rewarded ad.
    AsyncValue<Unit>? loadRewardedAd,

    /// Result of showing a rewarded ad.
    AsyncValue<Unit>? showRewardedAd,

    /// Whether the user earned a reward from the last shown ad.
    @Default(false) bool isRewardEarned,
  }) = _MaxUiState;
}
