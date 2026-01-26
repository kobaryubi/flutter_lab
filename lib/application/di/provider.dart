import 'package:dio/dio.dart';
import 'package:flutter_lab/data/repositories/agreement/shared_preferences_agreement_repository.dart';
import 'package:flutter_lab/data/repositories/pet/pet_repository.dart';
import 'package:flutter_lab/data/repositories/pet/pet_repository_remote.dart';
import 'package:flutter_lab/data/service/shared_preferences/shared_preferences_service.dart';
import 'package:flutter_lab/domain/agreement/agreement_repository.dart';
import 'package:flutter_lab/domain/battery/battery_repository.dart';
import 'package:flutter_lab/domain/battery/platform_battery_repository.dart';
import 'package:flutter_lab/domain/location/location_repository.dart';
import 'package:flutter_lab/domain/location/mock_location_repository.dart';
import 'package:flutter_lab/domain/use_cases/location/get_location_use_case.dart';
import 'package:flutter_lab/domain/use_cases/petstore/create_pet_use_case.dart';
import 'package:flutter_lab/domain/use_cases/petstore/list_pets_use_case.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

@riverpod
LocationRepository locationRepository(Ref ref) {
  return MockLocationRepository();
}

@riverpod
BatteryRepository batteryRepository(Ref ref) {
  return PlatformBatteryRepository();
}

@riverpod
AgreementRepository agreementRepository(Ref ref) {
  return SharedPreferencesAgreementRepository(
    sharedPreferencesService: ref.read(sharedPreferencesServiceProvider),
  );
}

// service
@riverpod
SharedPreferencesService sharedPreferencesService(Ref ref) {
  return SharedPreferencesService(
    sharedPreferencesAsync: ref.read(sharedPreferencesAsyncProvider),
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

@riverpod
GetLocationUseCase getLocationUseCase(Ref ref) {
  return GetLocationUseCase(
    locationRepository: ref.read(locationRepositoryProvider),
  );
}

@riverpod
SharedPreferencesAsync sharedPreferencesAsync(Ref ref) {
  return SharedPreferencesAsync();
}
