import 'package:freezed_annotation/freezed_annotation.dart';

part 'effect_vs_listen_ui_state.freezed.dart';

/// UI state for the EffectVsListenScreen.
@freezed
abstract class EffectVsListenUiState with _$EffectVsListenUiState {
  const factory EffectVsListenUiState({
    @Default(0) int count,
  }) = _EffectVsListenUiState;
}
