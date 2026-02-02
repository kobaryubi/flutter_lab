import 'package:flutter_lab/data/repositories/pet/pet_repository.dart';
import 'package:flutter_lab/domain/entity/pet/pet.dart';
import 'package:result_dart/result_dart.dart';

class CreatePetUseCase {
  CreatePetUseCase({required PetRepository petRepository})
    : _petRepository = petRepository;

  final PetRepository _petRepository;

  AsyncResult<Unit> call(Pet pet) async {
    return _petRepository.createPet(pet);
  }
}
