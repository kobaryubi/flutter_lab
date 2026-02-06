import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/entity/pet/pet.dart';
import 'package:flutter_lab/ui/petstore/ui_state/petstore_ui_state.dart';
import 'package:result_dart/result_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'petstore_view_model.g.dart';

@riverpod
class PetStoreViewModel extends _$PetStoreViewModel {
  @override
  PetStoreUiState build() => const PetStoreUiState();

  Future<Unit> createPet(Pet pet) async {
    final createPetUseCase = ref.read(createPetUseCaseProvider);
    await createPetUseCase.call(pet);

    return unit;
  }
}
