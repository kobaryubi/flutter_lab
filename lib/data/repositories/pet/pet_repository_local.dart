// import 'package:flutter_lab/data/repositories/activity/activity_repository.dart';
// import 'package:flutter_lab/data/services/local/local_data_service.dart';
// import 'package:flutter_lab/domain/models/activity/activity.dart';
// import 'package:flutter_lab/utils/result.dart';

import 'package:flutter_lab/data/repositories/pet/pet_repository.dart';
import 'package:flutter_lab/domain/models/pet/pet.dart';
import 'package:result_dart/result_dart.dart';

class PetRepositoryLocal implements PetRepository {
  @override
  Future<Result<List<Pet>>> listPets() {
    return Future.value(
      [
        const Pet(id: 1, name: 'Doggo'),
        const Pet(id: 2, name: 'Kitty'),
        const Pet(id: 3, name: 'Bunny'),
      ].toSuccess(),
    );
  }
}
