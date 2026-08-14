import 'package:flutter_lab/ui/swipe_tabs/ui_state/swipe_tabs_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'swipe_tabs_view_model.g.dart';

/// ViewModel that simulates fetching the item list of the selected tab.
@riverpod
class SwipeTabsViewModel extends _$SwipeTabsViewModel {
  @override
  SwipeTabsUiState build() => const SwipeTabsUiState();

  /// Simulates fetching the items of the given tab with a 2-second delay.
  Future<void> fetchItems({required int tabIndex}) async {
    state = state.copyWith(items: const AsyncLoading());

    final result = await AsyncValue.guard(
      () => Future.delayed(
        const Duration(seconds: 2),
        () => List.generate(10, (index) => 'Tab ${tabIndex + 1} item $index'),
      ),
    );

    state = state.copyWith(items: result);
  }
}
