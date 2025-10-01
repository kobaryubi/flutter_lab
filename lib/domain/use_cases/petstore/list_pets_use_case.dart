import 'package:flutter_lab/data/repositories/pet/pet_repository.dart';
import 'package:flutter_lab/domain/models/pet/pet.dart';
import 'package:result_dart/result_dart.dart';

class ListPetsUseCase {
  ListPetsUseCase({required PetRepository petRepository})
    : _petRepository = petRepository;

  final PetRepository _petRepository;

  Future<Result<List<Pet>>> call() async {
    return _petRepository.listPets();
  }
}
