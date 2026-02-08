import 'package:freezed_annotation/freezed_annotation.dart';

part 'arutana_ad_ui_state.freezed.dart';

/// Status of an interstitial ad.
enum InterstitialStatus {
  ready,
  loading,
  received,
  shown,
  closed,
  failed,
}

/// UI state for the Arutana ad screen.
@freezed
abstract class ArutanaAdUiState with _$ArutanaAdUiState {
  const factory ArutanaAdUiState({
    required InterstitialStatus interstitialStatus,
  }) = _ArutanaAdUiState;
}
