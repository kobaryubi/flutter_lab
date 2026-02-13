import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/device_info/ui_state/device_info_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'device_info_view_model.g.dart';

/// ViewModel for the device info screen.
@riverpod
class DeviceInfoViewModel extends _$DeviceInfoViewModel {
  @override
  DeviceInfoUiState build() =>
      const DeviceInfoUiState(deviceInfo: AsyncLoading());

  /// Fetches device information and updates the UI state.
  Future<void> fetchDeviceInfo() async {
    final getDeviceInfoUseCase = ref.read(getDeviceInfoUseCaseProvider);

    state = state.copyWith(
      deviceInfo: await AsyncValue.guard(() async {
        final result = await getDeviceInfoUseCase.call();
        return result.getOrThrow();
      }),
    );
  }
}
