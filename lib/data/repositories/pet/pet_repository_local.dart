import 'package:flutter_lab/data/repositories/pet/pet_repository.dart';
import 'package:flutter_lab/domain/entity/pet/pet.dart';
import 'package:result_dart/result_dart.dart';

class PetRepositoryLocal implements PetRepository {
  @override
  AsyncResult<Unit> createPet(Pet pet) {
    throw UnimplementedError();
  }
}
