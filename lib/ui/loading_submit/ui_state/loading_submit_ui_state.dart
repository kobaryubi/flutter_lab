import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'loading_submit_ui_state.freezed.dart';

/// UI state for the LoadingSubmitScreen.
///
/// `data` represents the initial fetch and `submit` represents the form
/// submission. Both are `null` for the initial state before each operation
/// is triggered.
@freezed
abstract class LoadingSubmitUiState with _$LoadingSubmitUiState {
  const factory LoadingSubmitUiState({
    AsyncValue<String>? data,
    AsyncValue<void>? submit,
  }) = _LoadingSubmitUiState;
}
