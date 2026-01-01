import 'package:flutter_lab/domain/models/todo/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'error_handling_ui_state.freezed.dart';

/// UI state for error handling screen.
@freezed
abstract class ErrorHandlingUiState with _$ErrorHandlingUiState {
  const factory ErrorHandlingUiState({
    required AsyncValue<List<Todo>>? todos,
  }) = _ErrorHandlingUiState;
}
