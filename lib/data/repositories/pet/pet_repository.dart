import 'package:flutter_lab/domain/models/pet/pet.dart';
import 'package:result_dart/result_dart.dart';

abstract class PetRepository {
  AsyncResult<List<Pet>> listPets();
  AsyncResult<void> createPet(Pet pet);
}
