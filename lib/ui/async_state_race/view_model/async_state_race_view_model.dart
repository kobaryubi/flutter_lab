import 'package:flutter_lab/ui/async_state_race/ui_state/async_state_race_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'async_state_race_view_model.g.dart';

/// ViewModel demonstrating async state race conditions.
///
/// Shows the difference between the buggy pattern (stale state capture)
/// and the correct pattern (await first, then read state).
@riverpod
class AsyncStateRaceViewModel extends _$AsyncStateRaceViewModel {
  @override
  AsyncStateRaceUiState build() => const AsyncStateRaceUiState();

  /// Fetches all 3 fields concurrently using the buggy pattern.
  ///
  /// The bug: `state.copyWith()` captures `state` BEFORE the `await`
  /// completes, so concurrent updates overwrite each other.
  Future<void> fetchAllWithBug() async {
    state = const AsyncStateRaceUiState(
      fetchA: AsyncLoading(),
      fetchB: AsyncLoading(),
      fetchC: AsyncLoading(),
    );

    await Future.wait([
      _fetchAWithBug(),
      _fetchBWithBug(),
      _fetchCWithBug(),
    ]);
  }

  /// Bug: state is captured before await, so concurrent writes are lost.
  Future<void> _fetchAWithBug() async {
    state = state.copyWith(
      fetchA: await AsyncValue.guard(() async {
        await Future<void>.delayed(const Duration(seconds: 1));
        return 'Result A';
      }),
    );
  }

  /// Bug: state is captured before await, so concurrent writes are lost.
  Future<void> _fetchBWithBug() async {
    state = state.copyWith(
      fetchB: await AsyncValue.guard(() async {
        await Future<void>.delayed(const Duration(seconds: 2));
        return 'Result B';
      }),
    );
  }

  /// Bug: state is captured before await, so concurrent writes are lost.
  Future<void> _fetchCWithBug() async {
    state = state.copyWith(
      fetchC: await AsyncValue.guard(() async {
        await Future<void>.delayed(const Duration(seconds: 3));
        return 'Result C';
      }),
    );
  }

  /// Fetches all 3 fields concurrently using the correct pattern.
  ///
  /// The fix: await the result first, then read the latest `state`
  /// before calling `copyWith`.
  Future<void> fetchAllWithFix() async {
    state = const AsyncStateRaceUiState(
      fetchA: AsyncLoading(),
      fetchB: AsyncLoading(),
      fetchC: AsyncLoading(),
    );

    await Future.wait([
      _fetchAWithFix(),
      _fetchBWithFix(),
      _fetchCWithFix(),
    ]);
  }

  /// Fix: await result first, then read latest state.
  Future<void> _fetchAWithFix() async {
    final result = await AsyncValue.guard(() async {
      await Future<void>.delayed(const Duration(seconds: 1));
      return 'Result A';
    });
    state = state.copyWith(fetchA: result);
  }

  /// Fix: await result first, then read latest state.
  Future<void> _fetchBWithFix() async {
    final result = await AsyncValue.guard(() async {
      await Future<void>.delayed(const Duration(seconds: 2));
      return 'Result B';
    });
    state = state.copyWith(fetchB: result);
  }

  /// Fix: await result first, then read latest state.
  Future<void> _fetchCWithFix() async {
    final result = await AsyncValue.guard(() async {
      await Future<void>.delayed(const Duration(seconds: 3));
      return 'Result C';
    });
    state = state.copyWith(fetchC: result);
  }

  /// Resets state to the initial default.
  void reset() {
    state = const AsyncStateRaceUiState();
  }
}
