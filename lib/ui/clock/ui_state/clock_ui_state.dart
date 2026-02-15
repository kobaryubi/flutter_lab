import 'package:freezed_annotation/freezed_annotation.dart';

part 'clock_ui_state.freezed.dart';

/// UI state for the clock screen.
@freezed
abstract class ClockUiState with _$ClockUiState {
  const factory ClockUiState({
    /// Current time from the clock package.
    required DateTime currentTime,

    /// Time elapsed since the screen was opened.
    required Duration elapsedDuration,
  }) = _ClockUiState;
}
