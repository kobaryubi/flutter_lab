import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'swipe_tabs_ui_state.freezed.dart';

/// UI state for the SwipeTabsScreen.
///
/// `items` is `null` for the initial state before the first fetch is
/// triggered, and holds the list fetched for the currently settled tab.
@freezed
abstract class SwipeTabsUiState with _$SwipeTabsUiState {
  const factory SwipeTabsUiState({
    AsyncValue<List<String>>? items,
  }) = _SwipeTabsUiState;
}
