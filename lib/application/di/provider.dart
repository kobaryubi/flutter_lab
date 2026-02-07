import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_lab/application/gateway/shortcut_icon_gateway.dart';
import 'package:flutter_lab/data/gateway/file_system_shortcut_icon_gateway.dart';
import 'package:flutter_lab/data/gateway/text_recognition/mlkit_text_recognition_gateway.dart';
import 'package:flutter_lab/data/platform/arutana_ad_service.dart';
import 'package:flutter_lab/data/repositories/agreement/shared_preferences_agreement_repository.dart';
import 'package:flutter_lab/data/repositories/dio_cache/dio_http_cache_repository.dart';
import 'package:flutter_lab/data/repositories/navigation/mock_url_navigation_list_repository.dart';
import 'package:flutter_lab/data/repositories/network/connectivity_plus_network_repository.dart';
import 'package:flutter_lab/data/repositories/pet/pet_repository.dart';
import 'package:flutter_lab/data/repositories/pet/pet_repository_remote.dart';
import 'package:flutter_lab/data/repositories/shortcut/file_system_shortcut_repository.dart';
import 'package:flutter_lab/data/service/shared_preferences/shared_preferences_service.dart';
import 'package:flutter_lab/domain/agreement/agreement_repository.dart';
import 'package:flutter_lab/domain/arutana_ad/arutana_ad_repository.dart';
import 'package:flutter_lab/domain/arutana_ad/platform_arutana_ad_repository.dart';
import 'package:flutter_lab/domain/battery/battery_repository.dart';
import 'package:flutter_lab/domain/battery/platform_battery_repository.dart';
import 'package:flutter_lab/domain/http_cache/http_cache_repository.dart';
import 'package:flutter_lab/domain/location/location_repository.dart';
import 'package:flutter_lab/domain/location/mock_location_repository.dart';
import 'package:flutter_lab/domain/navigation/url_navigation_list_repository.dart';
import 'package:flutter_lab/domain/network/network_repository.dart';
import 'package:flutter_lab/domain/shortcut/shortcut_repository.dart';
import 'package:flutter_lab/domain/text_recognition/text_recognition_gateway.dart';
import 'package:flutter_lab/domain/use_cases/location/get_location_use_case.dart';
import 'package:flutter_lab/domain/use_cases/network/check_connectivity_use_case.dart';
import 'package:flutter_lab/domain/use_cases/network/on_connectivity_changed_use_case.dart';
import 'package:flutter_lab/domain/use_cases/shortcut/copy_shortcut_icons_use_case.dart';
import 'package:flutter_lab/domain/use_cases/shortcut/delete_all_shortcut_icons_use_case.dart';
import 'package:flutter_lab/domain/use_cases/text_recognition/recognize_text_use_case.dart';
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
PetRepository petRepository(Ref ref) => PetRepositoryRemote(
  dio: ref.read(dioProvider),
);

@riverpod
LocationRepository locationRepository(Ref ref) => MockLocationRepository();

@riverpod
BatteryRepository batteryRepository(Ref ref) => PlatformBatteryRepository();

@riverpod
AgreementRepository agreementRepository(Ref ref) =>
    SharedPreferencesAgreementRepository(
      sharedPreferencesService: ref.read(sharedPreferencesServiceProvider),
    );

// gateway
@riverpod
ShortcutIconGateway shortcutIconGateway(Ref ref) =>
    FileSystemShortcutIconGateway();

@riverpod
ShortcutRepository shortcutRepository(Ref ref) => FileSystemShortcutRepository(
  gateway: ref.read(shortcutIconGatewayProvider),
);

// service
@riverpod
SharedPreferencesService sharedPreferencesService(Ref ref) =>
    SharedPreferencesService(
      sharedPreferencesAsync: ref.read(sharedPreferencesAsyncProvider),
    );

// use case

@riverpod
GetLocationUseCase getLocationUseCase(Ref ref) => GetLocationUseCase(
  locationRepository: ref.read(locationRepositoryProvider),
);

@riverpod
SharedPreferencesAsync sharedPreferencesAsync(Ref ref) =>
    SharedPreferencesAsync();

// arutana ad
@riverpod
ArutanaAdService arutanaAdService(Ref ref) => ArutanaAdService();

@riverpod
ArutanaAdRepository arutanaAdRepository(Ref ref) => PlatformArutanaAdRepository(
  service: ref.read(arutanaAdServiceProvider),
);

@riverpod
CopyShortcutIconsUseCase copyShortcutIconsUseCase(Ref ref) =>
    CopyShortcutIconsUseCase(
      shortcutRepository: ref.read(shortcutRepositoryProvider),
    );

@riverpod
DeleteAllShortcutIconsUseCase deleteAllShortcutIconsUseCase(Ref ref) =>
    DeleteAllShortcutIconsUseCase(
      shortcutRepository: ref.read(shortcutRepositoryProvider),
    );

// http cache
@Riverpod(keepAlive: true)
HttpCacheRepository httpCacheRepository(Ref ref) => DioHttpCacheRepository();

// navigation
@riverpod
UrlNavigationListRepository urlNavigationListRepository(Ref ref) =>
    MockUrlNavigationListRepository();

// network
@riverpod
NetworkRepository networkRepository(Ref ref) =>
    ConnectivityPlusNetworkRepository(
      connectivity: Connectivity(),
    );

@riverpod
CheckConnectivityUseCase checkConnectivityUseCase(Ref ref) =>
    CheckConnectivityUseCase(
      networkRepository: ref.read(networkRepositoryProvider),
    );

@riverpod
OnConnectivityChangedUseCase onConnectivityChangedUseCase(Ref ref) =>
    OnConnectivityChangedUseCase(
      networkRepository: ref.read(networkRepositoryProvider),
    );

// text recognition
@riverpod
TextRecognitionGateway textRecognitionGateway(Ref ref) {
  final gateway = MlkitTextRecognitionGateway();
  ref.onDispose(gateway.dispose);
  return gateway;
}

@riverpod
RecognizeTextUseCase recognizeTextUseCase(Ref ref) => RecognizeTextUseCase(
  textRecognitionGateway: ref.read(textRecognitionGatewayProvider),
);
