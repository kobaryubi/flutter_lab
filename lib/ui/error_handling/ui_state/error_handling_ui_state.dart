import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'error_handling_ui_state.freezed.dart';

/// UI state for the error-handling sample screen.
///
/// `message` is `null` for the initial state, [AsyncLoading] while fetching,
/// [AsyncData] on success, and [AsyncError] on failure — where the error
/// value is a presentation-layer `ErrorHandlingScreenError`.
@freezed
abstract class ErrorHandlingUiState with _$ErrorHandlingUiState {
  const factory ErrorHandlingUiState({
    AsyncValue<String>? message,
  }) = _ErrorHandlingUiState;
}
