import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/models/pet/pet.dart';
import 'package:flutter_lab/ui/petstore/ui_state/petstore_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'petstore_view_model.g.dart';

@riverpod
Future<List<Pet>> listPets(Ref ref) async {
  final petsResult = await ref.read(listPetsUseCaseProvider).call();
  return petsResult.getOrThrow();
}

@riverpod
class PetStoreViewModel extends _$PetStoreViewModel {
  @override
  PetStoreUiState build() {
    final pets = ref.watch(listPetsProvider);

    return PetStoreUiState(
      pets: pets,
    );
  }
}
