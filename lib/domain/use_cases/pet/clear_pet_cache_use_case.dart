import 'package:flutter_lab/data/repositories/pet/pet_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Clears the HTTP cache for the petsGet endpoint.
class ClearPetCacheUseCase {
  ClearPetCacheUseCase({
    required PetRepository petRepository,
  }) : _petRepository = petRepository;

  final PetRepository _petRepository;

  /// Clears the petsGet cache.
  AsyncResult<Unit> call() async => _petRepository.clearPetsGetCache();
}
