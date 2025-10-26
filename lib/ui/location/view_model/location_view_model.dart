import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/location/ui_state/location_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_view_model.g.dart';

@riverpod
class LocationViewModel extends _$LocationViewModel {
  @override
  LocationUiState build() {
    return const LocationUiState(location: null);
  }

  Future<void> getLocation() async {
    final getLocationUseCase = ref.read(getLocationUseCaseProvider);

    state = state.copyWith(
      location: await AsyncValue.guard(() async {
        final locationResult = await getLocationUseCase.call();
        return locationResult.getOrThrow();
      }),
    );
  }
}
