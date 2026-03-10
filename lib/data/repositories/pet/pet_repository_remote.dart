import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter_lab/data/mapper/pet/pet_mapper.dart';
import 'package:flutter_lab/data/repositories/pet/pet_repository.dart';
import 'package:flutter_lab/domain/entity/pet/pet.dart';
import 'package:petstore/petstore.dart' as petstore;
import 'package:result_dart/result_dart.dart';

class PetRepositoryRemote implements PetRepository {
  PetRepositoryRemote({required Dio dio})
    : _petsApi = petstore.Petstore(
        dio: dio,
      ).getPetsApi() {
    final globalOptions = CacheOptions(
      store: _cacheStore,
      policy: .noCache,
    );
    dio.interceptors.add(DioCacheInterceptor(options: globalOptions));
  }

  final MemCacheStore _cacheStore = MemCacheStore();
  final petstore.PetsApi _petsApi;
  final PetMapper _petMapper = PetMapper();

  /// Per-request cache options for petsGet only.
  CacheOptions get _petsGetCacheOptions => CacheOptions(
    store: _cacheStore,
    policy: .forceCache,
    maxStale: const Duration(seconds: 10),
  );

  @override
  AsyncResult<List<Pet>> listPets() async {
    try {
      final response = await _petsApi.petsGet(
        limit: 100,
        extra: _petsGetCacheOptions.toExtra(),
      );
      final pets =
          response.data
              ?.map(
                (dto) => _petMapper.convert<petstore.Pet, Pet>(dto),
              )
              .toList() ??
          [];

      return pets.toSuccess();
    } on DioException catch (exception) {
      return exception.toFailure();
    }
  }

  @override
  AsyncResult<Unit> createPet(Pet pet) async {
    try {
      final dto = _petMapper.convert<Pet, petstore.Pet>(pet);
      await _petsApi.petsPost(pet: dto);

      return const Success(unit);
    } on DioException catch (exception) {
      return exception.toFailure();
    }
  }

  @override
  AsyncResult<Unit> clearPetsGetCache() async {
    try {
      await _cacheStore.clean();

      return unit.toSuccess();
    } on Exception catch (exception) {
      return exception.toFailure();
    }
  }
}
