import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:result_dart/result_dart.dart';

part 'adfurikun_ui_state.freezed.dart';

/// UI state for the Adfurikun ads demo screen.
@freezed
abstract class AdfurikunUiState with _$AdfurikunUiState {
  const factory AdfurikunUiState({
    /// Result of initializing an interstitial ad.
    AsyncValue<Unit>? initializeInterstitialAd,

    /// Result of loading an interstitial ad.
    AsyncValue<Unit>? loadInterstitialAd,

    /// Result of playing an interstitial ad.
    AsyncValue<Unit>? playInterstitialAd,

    /// Result of initializing a reward ad.
    AsyncValue<Unit>? initializeRewardAd,

    /// Result of loading a reward ad.
    AsyncValue<Unit>? loadRewardAd,

    /// Result of playing a reward ad.
    AsyncValue<Unit>? playRewardAd,

    /// Whether the user earned a reward from the last played ad.
    @Default(false) bool isRewardEarned,
  }) = _AdfurikunUiState;
}
