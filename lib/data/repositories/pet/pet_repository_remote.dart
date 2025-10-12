import 'package:dio/dio.dart';
import 'package:flutter_lab/data/mapper/pet/pet_mapper.dart';
import 'package:flutter_lab/data/repositories/pet/pet_repository.dart';
import 'package:flutter_lab/data/services/dio/petstore_client.dart' as api;
import 'package:flutter_lab/domain/models/pet/pet.dart';
import 'package:petstore/petstore.dart' as petstore;
import 'package:result_dart/result_dart.dart';

class PetRepositoryRemote implements PetRepository {
  PetRepositoryRemote({required Dio dio})
    : _petsApi = petstore.Petstore(
        dio: dio,
      ).getPetsApi();

  final petstore.PetsApi _petsApi;
  final PetMapper _petMapper = PetMapper();
  final petStoreClient = api.PetStoreClient(
    Dio(BaseOptions(baseUrl: 'http://localhost:3000')),
  );

  @override
  AsyncResult<List<Pet>> listPets() async {
    try {
      final response = await _petsApi.petsGet(limit: 10);
      final petDtos = response.data?.toList() ?? [];

      final pets = _petMapper.convertList<petstore.Pet, Pet>(petDtos);

      return pets.toSuccess();
    } on DioException catch (e) {
      return e.toFailure();
    }
  }

  @override
  AsyncResult<Unit> createPet(Pet pet) async {
    final dto = _petMapper.convert<Pet, petstore.Pet>(pet);
    await _petsApi.petsPost(pet: dto);

    return const Success(unit);
  }
}
