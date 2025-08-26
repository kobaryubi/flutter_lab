import 'package:flutter_lab/ui/riverpod/view_models/riverpod_getting_started_ui_state.dart';
import 'package:flutter_lab/ui/riverpod/widgets/riverpod_getting_started_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod_getting_started_view_model.g.dart';

@riverpod
/// Notifier for the todo list filter.
class TodoListFilterNotifier extends _$TodoListFilterNotifier {
  @override
  TodoListFilter build() => TodoListFilter.all;

  @override
  set state(TodoListFilter newState) => super.state = newState;
}

@riverpod
/// ViewModel for the Riverpod Getting Started screen.
final class RiverpodGettingStartedViewModel
    extends _$RiverpodGettingStartedViewModel {
  @override
  RiverpodGettingStartedUiState build() {
    final todos = ref.watch(todoListNotifierProvider);
    final filter = ref.watch(todoListFilterNotifierProvider);
    final uncompletedTodosCount = todos.where((todo) => !todo.completed).length;

    final filteredTodos = switch (filter) {
      TodoListFilter.completed =>
        todos.where((todo) => todo.completed).toList(),
      TodoListFilter.active => todos.where((todo) => !todo.completed).toList(),
      TodoListFilter.all => todos,
    };

    return RiverpodGettingStartedUiState(
      uncompletedTodosCount: uncompletedTodosCount,
      filter: filter,
      filteredTodos: filteredTodos,
    );
  }

  /// Updates the UI state based on the current filter.
  void updateFilter(TodoListFilter filter) {
    state = state.copyWith(filter: filter);
  }
}
