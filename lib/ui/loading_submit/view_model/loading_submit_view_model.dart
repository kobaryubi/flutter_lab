import 'package:flutter_lab/ui/loading_submit/ui_state/loading_submit_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'loading_submit_view_model.g.dart';

/// ViewModel that simulates both a data fetch and a form submission.
@riverpod
class LoadingSubmitViewModel extends _$LoadingSubmitViewModel {
  @override
  LoadingSubmitUiState build() => const LoadingSubmitUiState();

  /// Simulates fetching data with a 2-second delay.
  Future<void> fetchData() async {
    state = state.copyWith(data: const AsyncLoading());
    final data = await AsyncValue.guard(
      () => Future.delayed(
        const Duration(seconds: 2),
        () => 'Hello from the server!',
      ),
    );
    state = state.copyWith(data: data);
  }

  /// Simulates submitting a form with a 2-second delay.
  Future<void> submit() async {
    state = state.copyWith(submit: const AsyncLoading());
    final submit = await AsyncValue.guard<void>(
      () => Future.delayed(const Duration(seconds: 2)),
    );
    state = state.copyWith(submit: submit);
  }
}
