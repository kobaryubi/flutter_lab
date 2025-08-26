import 'package:flutter_lab/ui/riverpod/view_models/riverpod_getting_started_ui_state.dart';
import 'package:flutter_lab/ui/riverpod/widgets/riverpod_getting_started_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod_getting_started_view_model.g.dart';

@riverpod
/// ViewModel for the Riverpod Getting Started screen.
final class RiverpodGettingStartedViewModel
    extends _$RiverpodGettingStartedViewModel {
  @override
  RiverpodGettingStartedUiState build() {
    final uncompletedTodosCount = ref
        .watch(todoListNotifierProvider)
        .where((todo) => !todo.completed)
        .length;

    return RiverpodGettingStartedUiState(
      uncompletedTodosCount: uncompletedTodosCount,
    );
  }
}
