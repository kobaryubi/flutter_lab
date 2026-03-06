import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'arutana_ui_state.freezed.dart';

/// UI state for the Arutana ad SDK demo screen.
@freezed
abstract class ArutanaUiState with _$ArutanaUiState {
  const factory ArutanaUiState({
    /// Result of initializing an interstitial ad.
    AsyncValue<void>? interstitialAd,

    /// Result of initializing a movie ad.
    AsyncValue<void>? movieAd,
  }) = _ArutanaUiState;
}
