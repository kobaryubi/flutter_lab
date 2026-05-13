import 'package:freezed_annotation/freezed_annotation.dart';

part 'mock_logged_in_ui_state.freezed.dart';

/// UI state for the [MockLoggedInScreen].
///
/// [targetScreen] is the pending target screen path consumed from
/// in-memory storage on screen entry, or `null` if nothing was pending.
@freezed
abstract class MockLoggedInUiState with _$MockLoggedInUiState {
  const factory MockLoggedInUiState({
    String? targetScreen,
  }) = _MockLoggedInUiState;
}
