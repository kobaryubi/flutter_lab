import 'package:freezed_annotation/freezed_annotation.dart';

part 'arutana_ad_ui_state.freezed.dart';

/// UI state for the Arutana ad screen.
@freezed
abstract class ArutanaAdUiState with _$ArutanaAdUiState {
  const factory ArutanaAdUiState({
    required String interstitialStatus,
    required String movieStatus,
    required bool isInterstitialLoading,
    required bool isMovieLoading,
  }) = _ArutanaAdUiState;
}
