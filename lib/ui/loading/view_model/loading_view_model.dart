import 'package:flutter_lab/ui/loading/ui_state/loading_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'loading_view_model.g.dart';

/// ViewModel that simulates a data fetch with a delay.
@riverpod
class LoadingViewModel extends _$LoadingViewModel {
  @override
  LoadingUiState build() => const LoadingUiState(data: AsyncLoading());

  /// Simulates fetching data with a 2-second delay.
  Future<void> fetchData() async {
    state = state.copyWith(data: const AsyncLoading());
    state = state.copyWith(
      data: await AsyncValue.guard(
        () => Future.delayed(
          const Duration(seconds: 2),
          () => 'Hello from the server!',
        ),
      ),
    );
  }
}
