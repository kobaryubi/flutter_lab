import 'package:flutter_lab/data/repositories/pet/pet_repository.dart';
import 'package:flutter_lab/domain/entity/pet/pet.dart';
import 'package:result_dart/result_dart.dart';

/// Fetches a list of pets from the repository.
class ListPetsUseCase {
  ListPetsUseCase({
    required PetRepository petRepository,
  }) : _petRepository = petRepository;

  final PetRepository _petRepository;

  /// Returns a list of [Pet].
  AsyncResult<List<Pet>> call() async => _petRepository.listPets();
}
