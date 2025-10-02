import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/petstore/ui_state/petstore_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'petstore_view_model.g.dart';

@riverpod
class PetStoreViewModel extends _$PetStoreViewModel {
  @override
  PetStoreUiState build() {
    return const PetStoreUiState(
      pets: null,
    );
  }

  Future<void> listPets() async {
    final listPetsUseCase = ref.read(listPetsUseCaseProvider);

    state = state.copyWith(
      pets: await AsyncValue.guard(() async {
        final petsResult = await listPetsUseCase.call();
        return petsResult.getOrThrow();
      }),
    );
  }
}
