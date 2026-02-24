import 'package:flutter_lab/ui/dialog_state/ui_state/dialog_state_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dialog_state_view_model.g.dart';

/// ViewModel for the dialog state closure experiment.
///
/// Manages a simple counter to demonstrate closure capture behavior
/// when a handler is passed to a dialog.
@riverpod
class DialogStateViewModel extends _$DialogStateViewModel {
  @override
  DialogStateUiState build() => const DialogStateUiState();

  /// Increments the counter by 1.
  void increment() {
    state = state.copyWith(counter: state.counter + 1);
  }
}
