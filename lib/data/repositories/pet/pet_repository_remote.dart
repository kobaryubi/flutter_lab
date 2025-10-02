import 'package:dio/dio.dart';
import 'package:flutter_lab/data/mapper/pet/pet_mapper.dart';
import 'package:flutter_lab/data/repositories/pet/pet_repository.dart';
import 'package:flutter_lab/domain/models/pet/pet.dart';
import 'package:petstore/petstore.dart' as petstore;
import 'package:result_dart/result_dart.dart';

class PetRepositoryRemote implements PetRepository {
  PetRepositoryRemote({required petstore.PetsApi petsApi}) : _petsApi = petsApi;

  final petstore.PetsApi _petsApi;
  final PetMapper _petMapper = PetMapper();

  @override
  Future<Result<List<Pet>>> listPets() async {
    try {
      final response = await _petsApi.petsGet();
      final petDtos = response.data?.toList() ?? [];

      final pets = _petMapper.convertList<petstore.Pet, Pet>(petDtos);

      return pets.toSuccess();
    } on DioException catch (e) {
      return e.toFailure();
    }
  }
}
