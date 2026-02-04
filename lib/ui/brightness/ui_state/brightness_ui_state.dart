import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'brightness_ui_state.freezed.dart';

/// UI state for the BrightnessScreen.
///
/// `brightness` is `null` for the initial state before fetching.
@freezed
abstract class BrightnessUiState with _$BrightnessUiState {
  const factory BrightnessUiState({
    AsyncValue<double>? brightness,
  }) = _BrightnessUiState;
}
