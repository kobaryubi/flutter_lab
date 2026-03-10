import 'package:flutter_lab/domain/entity/pet/pet.dart';
import 'package:result_dart/result_dart.dart';

abstract class PetRepository {
  /// Fetches a list of pets.
  AsyncResult<List<Pet>> listPets();

  /// Fetches a pet by id without cache.
  AsyncResult<Pet> getPet({required int petId});

  /// Creates a new pet.
  AsyncResult<Unit> createPet(Pet pet);

  /// Clears the HTTP cache for listPets.
  AsyncResult<Unit> clearListPetsCache();

  /// Clears the HTTP cache for getPet.
  AsyncResult<Unit> clearGetPetCache();
}
