import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter_lab/data/mapper/pet/pet_mapper.dart';
import 'package:flutter_lab/data/repositories/pet/pet_repository.dart';
import 'package:flutter_lab/domain/entity/pet/pet.dart';
import 'package:petstore/petstore.dart' as petstore;
import 'package:result_dart/result_dart.dart';

class PetRepositoryRemote implements PetRepository {
  PetRepositoryRemote({
    required Dio dio,
    Duration maxStale = const Duration(seconds: 10),
  }) : _petsApi = petstore.Petstore(dio: dio).getPetsApi(),
       _maxStale = maxStale {
    final globalOptions = CacheOptions(
      store: _cacheStore,
      policy: .noCache,
    );
    dio.interceptors.add(DioCacheInterceptor(options: globalOptions));
  }

  static final _listPetsPathPattern = RegExp(r'/pets(\?|$)');
  static final _getPetPathPattern = RegExp(r'/pets/\d+$');

  final MemCacheStore _cacheStore = MemCacheStore();
  final petstore.PetsApi _petsApi;
  final PetMapper _petMapper = PetMapper();
  final Duration _maxStale;

  /// Per-request cache options.
  CacheOptions get _cacheOptions => CacheOptions(
    store: _cacheStore,
    policy: .forceCache,
    maxStale: _maxStale,
  );

  @override
  AsyncResult<List<Pet>> listPets() async {
    try {
      final response = await _petsApi.petsGet(
        limit: 100,
        extra: _cacheOptions.toExtra(),
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
  AsyncResult<Pet> getPet({required int petId}) async {
    try {
      final response = await _petsApi.petsPetIdGet(
        petId: petId,
        extra: _cacheOptions.toExtra(),
      );
      final pet = _petMapper.convert<petstore.Pet, Pet>(response.data);

      return pet.toSuccess();
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
  AsyncResult<Unit> clearListPetsCache() async {
    try {
      await _cacheStore.deleteFromPath(_listPetsPathPattern);

      return unit.toSuccess();
    } on Exception catch (exception) {
      return exception.toFailure();
    }
  }

  @override
  AsyncResult<Unit> clearGetPetCache() async {
    try {
      await _cacheStore.deleteFromPath(_getPetPathPattern);

      return unit.toSuccess();
    } on Exception catch (exception) {
      return exception.toFailure();
    }
  }
}
