import 'package:flutter_lab/domain/entity/pet/pet.dart';
import 'package:result_dart/result_dart.dart';

abstract class PetRepository {
  AsyncResult<Unit> createPet(Pet pet);
}
