import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/network/ui_state/network_ui_state.dart';
import 'package:result_dart/result_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'network_view_model.g.dart';

/// ViewModel that manages network connectivity checks.
@riverpod
class NetworkViewModel extends _$NetworkViewModel {
  @override
  NetworkUiState build() {
    return const NetworkUiState();
  }

  /// Checks the current network connectivity status and updates the UI state.
  Future<void> checkConnectivity() async {
    final useCase = ref.read(checkConnectivityUseCaseProvider);
    state = state.copyWith(
      status: await AsyncValue.guard(
        () => useCase.call().getOrThrow(),
      ),
    );
  }
}
