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

  group('getPet', () {
    test('returns a pet on success', () async {
      dioAdapter.onGet(
        '/pets/1',
        (server) => server.reply(200, {'id': 1, 'name': 'dog'}),
      );

      final result = await repository.getPet(petId: 1);

      expect(result.isSuccess(), true);
      expect(result.getOrThrow(), const Pet(id: 1, name: 'dog'));
    });

    test('returns cached response on second call', () async {
      dioAdapter.onGet(
        '/pets/1',
        (server) => server.reply(200, {'id': 1, 'name': 'dog'}),
      );

      await repository.getPet(petId: 1);

      // Register a different response.
      dioAdapter.onGet(
        '/pets/1',
        (server) => server.reply(200, {'id': 1, 'name': 'updated dog'}),
      );

      final secondResult = await repository.getPet(petId: 1);

      // The second call should return the cached (old) data.
      expect(secondResult.getOrThrow(), const Pet(id: 1, name: 'dog'));
    });
  });

  group('clearListPetsCache', () {
    test('clears cache so next listPets hits server again', () async {
      dioAdapter.onGet(
        '/pets',
        (server) => server.reply(200, [
          {'id': 1, 'name': 'dog'},
        ]),
        queryParameters: {'limit': 100},
      );

      await repository.listPets();

      await repository.clearListPetsCache();

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

    test('does not clear getPet cache', () async {
      dioAdapter.onGet(
        '/pets/1',
        (server) => server.reply(200, {'id': 1, 'name': 'dog'}),
      );

      await repository.getPet(petId: 1);

      await repository.clearListPetsCache();

      // Register a different response.
      dioAdapter.onGet(
        '/pets/1',
        (server) => server.reply(200, {'id': 1, 'name': 'updated dog'}),
      );

      final result = await repository.getPet(petId: 1);

      // getPet cache should still return the old data.
      expect(result.getOrThrow(), const Pet(id: 1, name: 'dog'));
    });

    test('returns Success on clear', () async {
      final result = await repository.clearListPetsCache();

      expect(result.isSuccess(), true);
    });
  });

  group('cache expiry', () {
    late PetRepositoryRemote expiredRepository;

    setUp(() {
      expiredRepository = PetRepositoryRemote(
        dio: dio,
        maxStale: .zero,
      );
    });

    test('listPets returns fresh data after zero maxStale', () async {
      dioAdapter.onGet(
        '/pets',
        (server) => server.reply(200, [
          {'id': 1, 'name': 'dog'},
        ]),
        queryParameters: {'limit': 100},
      );

      await expiredRepository.listPets();

      // Register a different response.
      dioAdapter.onGet(
        '/pets',
        (server) => server.reply(200, [
          {'id': 99, 'name': 'new animal'},
        ]),
        queryParameters: {'limit': 100},
      );

      final secondResult = await expiredRepository.listPets();

      // Cache expired immediately, so the new server data should be returned.
      expect(
        secondResult.getOrThrow().first,
        const Pet(id: 99, name: 'new animal'),
      );
    });

    test('getPet returns fresh data after zero maxStale', () async {
      dioAdapter.onGet(
        '/pets/1',
        (server) => server.reply(200, {'id': 1, 'name': 'dog'}),
      );

      await expiredRepository.getPet(petId: 1);

      // Register a different response.
      dioAdapter.onGet(
        '/pets/1',
        (server) => server.reply(200, {'id': 1, 'name': 'updated dog'}),
      );

      final secondResult = await expiredRepository.getPet(petId: 1);

      // Cache expired immediately, so the new server data should be returned.
      expect(
        secondResult.getOrThrow(),
        const Pet(id: 1, name: 'updated dog'),
      );
    });

    test(
      'listPets returns cached data within maxStale then fresh data after',
      () async {
        final shortCacheRepository = PetRepositoryRemote(
          dio: dio,
          maxStale: const Duration(seconds: 1),
        );

        dioAdapter.onGet(
          '/pets',
          (server) => server.reply(200, [
            {'id': 1, 'name': 'dog'},
          ]),
          queryParameters: {'limit': 100},
        );

        await shortCacheRepository.listPets();

        // Register a different response.
        dioAdapter.onGet(
          '/pets',
          (server) => server.reply(200, [
            {'id': 99, 'name': 'new animal'},
          ]),
          queryParameters: {'limit': 100},
        );

        // Within cache window, should return cached data.
        final cachedResult = await shortCacheRepository.listPets();

        expect(
          cachedResult.getOrThrow().first,
          const Pet(id: 1, name: 'dog'),
        );

        // Wait for cache to expire.
        await Future<void>.delayed(const Duration(seconds: 2));

        final freshResult = await shortCacheRepository.listPets();

        // After cache expired, the new server data should be returned.
        expect(
          freshResult.getOrThrow().first,
          const Pet(id: 99, name: 'new animal'),
        );
      },
    );
  });

  group('clearGetPetCache', () {
    test('clears cache so next getPet hits server again', () async {
      dioAdapter.onGet(
        '/pets/1',
        (server) => server.reply(200, {'id': 1, 'name': 'dog'}),
      );

      await repository.getPet(petId: 1);

      await repository.clearGetPetCache();

      // Register a different response after clearing cache.
      dioAdapter.onGet(
        '/pets/1',
        (server) => server.reply(200, {'id': 1, 'name': 'updated dog'}),
      );

      final result = await repository.getPet(petId: 1);

      // After clearing cache, the new server data should be returned.
      expect(result.getOrThrow(), const Pet(id: 1, name: 'updated dog'));
    });

    test('does not clear listPets cache', () async {
      dioAdapter.onGet(
        '/pets',
        (server) => server.reply(200, [
          {'id': 1, 'name': 'dog'},
        ]),
        queryParameters: {'limit': 100},
      );

      await repository.listPets();

      await repository.clearGetPetCache();

      // Register a different response.
      dioAdapter.onGet(
        '/pets',
        (server) => server.reply(200, [
          {'id': 99, 'name': 'new animal'},
        ]),
        queryParameters: {'limit': 100},
      );

      final result = await repository.listPets();

      // listPets cache should still return the old data.
      expect(result.getOrThrow().first, const Pet(id: 1, name: 'dog'));
    });

    test('returns Success on clear', () async {
      final result = await repository.clearGetPetCache();

      expect(result.isSuccess(), true);
    });
  });
}
