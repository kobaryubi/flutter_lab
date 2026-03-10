import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/pet_cache/ui_state/pet_cache_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pet_cache_view_model.g.dart';

/// ViewModel that manages pet list fetching with cache and cache clearing.
@riverpod
class PetCacheViewModel extends _$PetCacheViewModel {
  @override
  PetCacheUiState build() => const PetCacheUiState();

  /// Fetches the list of pets with 10-second cache.
  Future<void> listPets() async {
    state = state.copyWith(pets: const AsyncLoading());

    final useCase = ref.read(listPetsUseCaseProvider);
    final pets = await AsyncValue.guard(
      () async => (await useCase.call()).getOrThrow(),
    );

    state = state.copyWith(pets: pets);
  }

  /// Clears the petsGet cache and resets the pets state.
  Future<void> clearCache() async {
    final useCase = ref.read(clearPetCacheUseCaseProvider);
    await useCase.call();

    state = const PetCacheUiState();
  }
}
