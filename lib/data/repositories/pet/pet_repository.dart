import 'package:flutter_lab/domain/entity/pet/pet.dart';
import 'package:result_dart/result_dart.dart';

abstract class PetRepository {
  /// Fetches a list of pets.
  AsyncResult<List<Pet>> listPets();

  /// Creates a new pet.
  AsyncResult<Unit> createPet(Pet pet);

  /// Clears the HTTP cache for petsGet.
  AsyncResult<Unit> clearPetsGetCache();
}
