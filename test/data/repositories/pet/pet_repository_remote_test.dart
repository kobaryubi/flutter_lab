import 'package:dio/dio.dart';
import 'package:flutter_lab/data/repositories/pet/pet_repository_remote.dart';
import 'package:flutter_lab/domain/entity/pet/pet.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

void main() {
  late Dio dio;
  late DioAdapter dioAdapter;
  late PetRepositoryRemote repository;

  setUp(() {
    dio = Dio(BaseOptions(baseUrl: 'http://localhost:3000'));
    dioAdapter = DioAdapter(dio: dio);
    repository = PetRepositoryRemote(dio: dio);
  });

  group('listPets', () {
    test('returns list of pets on success', () async {
      dioAdapter.onGet(
        '/pets',
        (server) => server.reply(200, [
          {'id': 1, 'name': 'dog'},
          {'id': 2, 'name': 'cat'},
        ]),
        queryParameters: {'limit': 100},
      );

      final result = await repository.listPets();

      expect(result.isSuccess(), true);
      final pets = result.getOrThrow();
      expect(pets.length, 2);
      expect(pets[0], const Pet(id: 1, name: 'dog'));
      expect(pets[1], const Pet(id: 2, name: 'cat'));
    });

    test('returns cached response on second call', () async {
      dioAdapter.onGet(
        '/pets',
        (server) => server.reply(200, [
          {'id': 1, 'name': 'dog'},
        ]),
        queryParameters: {'limit': 100},
      );

      await repository.listPets();

      // Register a different response for the same endpoint.
      // If the second call hits the server, it would return the new data.
      dioAdapter.onGet(
        '/pets',
        (server) => server.reply(200, [
          {'id': 99, 'name': 'new animal'},
        ]),
        queryParameters: {'limit': 100},
      );

      final secondResult = await repository.listPets();

      // The second call should return the cached (old) data.
      final pets = secondResult.getOrThrow();
      expect(pets.length, 1);
      expect(pets[0], const Pet(id: 1, name: 'dog'));
    });
  });

  group('clearPetsGetCache', () {
    test('clears cache so next listPets hits server again', () async {
      dioAdapter.onGet(
        '/pets',
        (server) => server.reply(200, [
          {'id': 1, 'name': 'dog'},
        ]),
        queryParameters: {'limit': 100},
      );

      final firstResult = await repository.listPets();

      expect(firstResult.getOrThrow().first, const Pet(id: 1, name: 'dog'));

      await repository.clearPetsGetCache();

      // Register a different response after clearing cache.
      dioAdapter.onGet(
        '/pets',
        (server) => server.reply(200, [
          {'id': 99, 'name': 'new animal'},
        ]),
        queryParameters: {'limit': 100},
      );

      final secondResult = await repository.listPets();

      // After clearing cache, the new server data should be returned.
      expect(
        secondResult.getOrThrow().first,
        const Pet(id: 99, name: 'new animal'),
      );
    });

    test('returns Success on clear', () async {
      final result = await repository.clearPetsGetCache();

      expect(result.isSuccess(), true);
    });
  });
}
