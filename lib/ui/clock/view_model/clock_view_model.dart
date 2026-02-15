import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/clock/ui_state/clock_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'clock_view_model.g.dart';

/// ViewModel for the clock screen.
@riverpod
class ClockViewModel extends _$ClockViewModel {
  late final DateTime _startTime;

  @override
  ClockUiState build() {
    final now = ref.read(getCurrentTimeUseCaseProvider).call();
    _startTime = now;
    return ClockUiState(
      currentTime: now,
      elapsedDuration: Duration.zero,
    );
  }

  /// Updates the current time and calculates elapsed duration from start.
  void updateCurrentTime() {
    final now = ref.read(getCurrentTimeUseCaseProvider).call();
    state = state.copyWith(
      currentTime: now,
      elapsedDuration: now.difference(_startTime),
    );
  }
}
