import 'package:flutter_lab/domain/models/todo/todo.dart';
import 'package:flutter_lab/ui/riverpod/widgets/riverpod_getting_started_screen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'riverpod_getting_started_ui_state.freezed.dart';

@freezed
/// UI state for the Riverpod Getting Started screen.
abstract class RiverpodGettingStartedUiState
    with _$RiverpodGettingStartedUiState {
  /// Creates a new instance of [RiverpodGettingStartedUiState].
  const factory RiverpodGettingStartedUiState({
    required int uncompletedTodosCount,
    required TodoListFilter filter,
    required List<Todo> filteredTodos,
  }) = _RiverpodGettingStartedUiState;
}
