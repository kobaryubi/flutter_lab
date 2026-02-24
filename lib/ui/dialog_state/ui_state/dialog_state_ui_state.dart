import 'package:freezed_annotation/freezed_annotation.dart';

part 'dialog_state_ui_state.freezed.dart';

/// UI state for the dialog state closure experiment screen.
@freezed
abstract class DialogStateUiState with _$DialogStateUiState {
  const factory DialogStateUiState({
    @Default(0) int counter,
  }) = _DialogStateUiState;
}
