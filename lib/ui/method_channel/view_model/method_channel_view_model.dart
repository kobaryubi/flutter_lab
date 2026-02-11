import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/method_channel/ui_state/method_channel_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'method_channel_view_model.g.dart';

/// ViewModel for the method channel screen.
@riverpod
class MethodChannelViewModel extends _$MethodChannelViewModel {
  @override
  MethodChannelUiState build() => const MethodChannelUiState();

  /// Fetches the current location via platform method channel.
  Future<void> getLocation() async {
    final getLocationUseCase = ref.read(getLocationUseCaseProvider);

    state = state.copyWith(
      location: await AsyncValue.guard(() async {
        final result = await getLocationUseCase.call();
        return result.getOrThrow();
      }),
    );
  }
}
