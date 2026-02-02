import 'package:flutter_lab/data/repositories/pet/pet_repository.dart';
import 'package:flutter_lab/domain/entity/pet/pet.dart';
import 'package:result_dart/result_dart.dart';

class ListPetsUseCase {
  ListPetsUseCase({required PetRepository petRepository})
    : _petRepository = petRepository;

  final PetRepository _petRepository;

  AsyncResult<List<Pet>> call() async {
    return _petRepository.listPets();
  }
}
