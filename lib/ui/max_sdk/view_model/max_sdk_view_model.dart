import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/max_sdk/ui_state/max_sdk_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'max_sdk_view_model.g.dart';

/// Dummy SDK key for testing MAX SDK initialization.
const _sdkKey = 'YOUR_SDK_KEY';

/// ViewModel for testing AppLovin MAX SDK initialization.
@riverpod
class MaxSdkViewModel extends _$MaxSdkViewModel {
  @override
  MaxSdkUiState build() => const MaxSdkUiState();

  /// Initializes the AppLovin SDK with the dummy SDK key.
  Future<void> initialize() async {
    if (state.configuration is AsyncLoading) {
      return;
    }

    state = state.copyWith(configuration: const AsyncLoading());

    final configuration = await AsyncValue.guard(() async {
      final result = await ref
          .read(initializeApplovinUseCaseProvider)
          .call(sdkKey: _sdkKey);
      return result.getOrThrow();
    });

    state = state.copyWith(configuration: configuration);
  }
}
