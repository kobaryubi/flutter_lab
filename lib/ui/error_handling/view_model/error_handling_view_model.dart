import 'package:flutter_lab/domain/models/exception/domain_exception.dart';
import 'package:flutter_lab/domain/models/todo/todo.dart';
import 'package:flutter_lab/ui/error_handling/ui_state/error_handling_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'error_handling_view_model.g.dart';

@riverpod
class ErrorHandlingViewModel extends _$ErrorHandlingViewModel {
  @override
  ErrorHandlingUiState build() {
    return const ErrorHandlingUiState(todos: null);
  }

  /// Loads todos.
  Future<void> load() async {
    state = state.copyWith(
      todos: await AsyncValue.guard(() async {
        await Future<void>.delayed(const Duration(seconds: 1));
        return [
          const Todo(id: '1', description: 'First todo'),
          const Todo(id: '2', description: 'Second todo', completed: true),
        ];
      }),
    );
  }

  /// Throws a domain exception.
  Future<void> throwException(DomainException exception) async {
    state = state.copyWith(
      todos: await AsyncValue.guard(() async {
        throw exception;
      }),
    );
  }
}
