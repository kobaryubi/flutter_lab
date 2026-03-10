import 'package:flutter_lab/data/repositories/pet/pet_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Clears the HTTP cache for the listPets endpoint.
class ClearListPetsCacheUseCase {
  ClearListPetsCacheUseCase({
    required PetRepository petRepository,
  }) : _petRepository = petRepository;

  final PetRepository _petRepository;

  /// Clears the listPets cache.
  AsyncResult<Unit> call() async => _petRepository.clearListPetsCache();
}

/// Clears the HTTP cache for the getPet endpoint.
class ClearGetPetCacheUseCase {
  ClearGetPetCacheUseCase({
    required PetRepository petRepository,
  }) : _petRepository = petRepository;

  final PetRepository _petRepository;

  /// Clears the getPet cache.
  AsyncResult<Unit> call() async => _petRepository.clearGetPetCache();
}
