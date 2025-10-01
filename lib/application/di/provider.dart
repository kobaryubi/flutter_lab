import 'package:flutter_lab/data/repositories/pet/pet_repository.dart';
import 'package:flutter_lab/data/repositories/pet/pet_repository_local.dart';
import 'package:flutter_lab/domain/use_cases/petstore/list_pets_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

// repository
@riverpod
PetRepository petRepository(Ref ref) {
  return PetRepositoryLocal();
}

/// use case
@riverpod
ListPetsUseCase listPetsUseCase(Ref ref) {
  return ListPetsUseCase(
    petRepository: ref.read(petRepositoryProvider),
  );
}
