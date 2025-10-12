import 'package:dio/dio.dart';
import 'package:flutter_lab/data/repositories/pet/pet_repository.dart';
import 'package:flutter_lab/data/repositories/pet/pet_repository_remote.dart';
import 'package:flutter_lab/domain/use_cases/petstore/create_pet_use_case.dart';
import 'package:flutter_lab/domain/use_cases/petstore/list_pets_use_case.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

// dio
@riverpod
Dio dio(Ref ref) {
  final dio = Dio(
    BaseOptions(
      contentType: Headers.jsonContentType,
      baseUrl: 'http://localhost:3000',
    ),
  );

  DioAdapter(dio: dio)
    ..onGet(
      '/pets',
      (server) => server.reply(
        200,
        [
          {'id': 1, 'name': 'dog'},
          {'id': 2, 'name': 'cat'},
          {'id': 3, 'name': 'parrot'},
        ],
        delay: const Duration(seconds: 1),
      ),
    )
    ..onPost(
      '/pets',
      (server) => server.reply(
        201,
        null,
        delay: const Duration(seconds: 1),
      ),
    );

  return dio;
}

// repository
@riverpod
PetRepository petRepository(Ref ref) {
  return PetRepositoryRemote(
    dio: ref.read(dioProvider),
  );
}

// use case
@riverpod
ListPetsUseCase listPetsUseCase(Ref ref) {
  return ListPetsUseCase(
    petRepository: ref.read(petRepositoryProvider),
  );
}

@riverpod
CreatePetUseCase createPetUseCase(Ref ref) {
  return CreatePetUseCase(
    petRepository: ref.read(petRepositoryProvider),
  );
}
