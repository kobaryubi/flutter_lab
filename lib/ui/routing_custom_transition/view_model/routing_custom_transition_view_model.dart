import 'package:flutter_lab/ui/routing_custom_transition/ui_state/routing_custom_transition_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routing_custom_transition_view_model.g.dart';

/// ViewModel that simulates the initial API fetch for the screen.
@riverpod
class RoutingCustomTransitionViewModel
    extends _$RoutingCustomTransitionViewModel {
  @override
  RoutingCustomTransitionUiState build() =>
      const RoutingCustomTransitionUiState();

  /// Simulates fetching data from an API with a 2-second delay.
  Future<void> fetchData() async {
    state = state.copyWith(data: const AsyncLoading());

    final result = await AsyncValue.guard(
      () => Future.delayed(
        const Duration(seconds: 2),
        () => 'Hello from the server!',
      ),
    );
    state = state.copyWith(data: result);
  }
}
