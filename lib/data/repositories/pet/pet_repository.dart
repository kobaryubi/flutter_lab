import 'package:flutter_lab/domain/models/pet/pet.dart';
import 'package:result_dart/result_dart.dart';

abstract class PetRepository {
  Future<Result<Pet>> listPets();
}
