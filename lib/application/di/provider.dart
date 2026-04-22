import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_lab/application/gateway/shortcut_icon_gateway.dart';
// import 'package:flutter_lab/data/gateway/adfurikun/sdk_adfurikun_gateway.dart';
import 'package:flutter_lab/data/gateway/adfurikun/mock_adfurikun_gateway.dart';
// import 'package:flutter_lab/data/gateway/adjust/sdk_adjust_gateway.dart';
import 'package:flutter_lab/data/gateway/adjust/mock_adjust_gateway.dart';
import 'package:flutter_lab/data/gateway/analytics/firebase_analytics_gateway.dart';
import 'package:flutter_lab/data/gateway/arutana/pigeon_arutana_gateway.dart';
import 'package:flutter_lab/data/gateway/clock/clock_clock_gateway.dart';
import 'package:flutter_lab/data/gateway/connectivity_plus_network_gateway.dart';
import 'package:flutter_lab/data/gateway/device_info/device_info_plus_device_info_gateway.dart';
import 'package:flutter_lab/data/gateway/file_system_shortcut_icon_gateway.dart';
import 'package:flutter_lab/data/gateway/google_api/plugin_google_api_gateway.dart';
// import 'package:flutter_lab/data/gateway/max/sdk_max_gateway.dart';
import 'package:flutter_lab/data/gateway/max/mock_max_gateway.dart';
import 'package:flutter_lab/data/gateway/native_button/platform_native_button_gateway.dart';
import 'package:flutter_lab/data/gateway/performance/firebase_performance_gateway.dart';
import 'package:flutter_lab/data/gateway/permission/permission_handler_gateway.dart';
import 'package:flutter_lab/data/gateway/pigeon_example/pigeon_pigeon_gateway.dart';
import 'package:flutter_lab/data/gateway/profile_passport/pigeon_profile_passport_gateway.dart';
import 'package:flutter_lab/data/gateway/text_recognition/mlkit_text_recognition_gateway.dart';
import 'package:flutter_lab/data/repositories/agreement/shared_preferences_agreement_repository.dart';
import 'package:flutter_lab/data/repositories/app_store/platform_app_store_repository.dart';
import 'package:flutter_lab/data/repositories/dio_cache/dio_http_cache_repository.dart';
import 'package:flutter_lab/data/repositories/etag_cache/s3_etag_cache_repository.dart';
import 'package:flutter_lab/data/repositories/in_app_review/plugin_in_app_review_repository.dart';
import 'package:flutter_lab/data/repositories/location/platform_location_repository.dart';
import 'package:flutter_lab/data/repositories/navigation/mock_url_navigation_list_repository.dart';
import 'package:flutter_lab/data/repositories/pet/pet_repository.dart';
import 'package:flutter_lab/data/repositories/pet/pet_repository_remote.dart';
import 'package:flutter_lab/data/repositories/push_notification/firebase_messaging_push_notification_repository.dart';
import 'package:flutter_lab/data/repositories/shortcut/file_system_shortcut_repository.dart';
import 'package:flutter_lab/data/service/shared_preferences/shared_preferences_service.dart';
import 'package:flutter_lab/domain/adfurikun/adfurikun_gateway.dart';
import 'package:flutter_lab/domain/adjust/adjust_gateway.dart';
import 'package:flutter_lab/domain/agreement/agreement_repository.dart';
import 'package:flutter_lab/domain/analytics/analytics_gateway.dart';
import 'package:flutter_lab/domain/app_store/app_store_repository.dart';
import 'package:flutter_lab/domain/arutana/arutana_gateway.dart';
import 'package:flutter_lab/domain/battery/battery_gateway.dart';
import 'package:flutter_lab/domain/battery/platform_battery_gateway.dart';
import 'package:flutter_lab/domain/clock/clock_gateway.dart';
import 'package:flutter_lab/domain/device_info/device_info_gateway.dart';
import 'package:flutter_lab/domain/entity/app_store/target_platform_type.dart';
import 'package:flutter_lab/domain/etag_cache/etag_cache_repository.dart';
import 'package:flutter_lab/domain/google_api/google_api_gateway.dart';
import 'package:flutter_lab/domain/http_cache/http_cache_repository.dart';
import 'package:flutter_lab/domain/in_app_review/in_app_review_repository.dart';
import 'package:flutter_lab/domain/location/location_repository.dart';
import 'package:flutter_lab/domain/max/max_gateway.dart';
import 'package:flutter_lab/domain/native_button/native_button_gateway.dart';
import 'package:flutter_lab/domain/navigation/url_navigation_list_repository.dart';
import 'package:flutter_lab/domain/network/network_gateway.dart';
import 'package:flutter_lab/domain/performance/performance_gateway.dart';
import 'package:flutter_lab/domain/permission/permission_gateway.dart';
import 'package:flutter_lab/domain/pigeon_example/pigeon_gateway.dart';
import 'package:flutter_lab/domain/profile_passport/profile_passport_gateway.dart';
import 'package:flutter_lab/domain/push_notification/push_notification_repository.dart';
import 'package:flutter_lab/domain/shortcut/shortcut_repository.dart';
import 'package:flutter_lab/domain/text_recognition/text_recognition_gateway.dart';
import 'package:flutter_lab/domain/use_cases/adfurikun/initialize_adfurikun_interstitial_ad_use_case.dart';
import 'package:flutter_lab/domain/use_cases/adfurikun/initialize_adfurikun_reward_ad_use_case.dart';
import 'package:flutter_lab/domain/use_cases/adfurikun/load_adfurikun_interstitial_ad_use_case.dart';
import 'package:flutter_lab/domain/use_cases/adfurikun/load_adfurikun_reward_ad_use_case.dart';
import 'package:flutter_lab/domain/use_cases/adfurikun/play_adfurikun_interstitial_ad_use_case.dart';
import 'package:flutter_lab/domain/use_cases/adfurikun/play_adfurikun_reward_ad_use_case.dart';
import 'package:flutter_lab/domain/use_cases/adjust/get_adid_use_case.dart';
import 'package:flutter_lab/domain/use_cases/adjust/initialize_adjust_use_case.dart';
import 'package:flutter_lab/domain/use_cases/adjust/track_event_use_case.dart';
import 'package:flutter_lab/domain/use_cases/agreement/initialize_latest_agreed_date_use_case.dart';
import 'package:flutter_lab/domain/use_cases/analytics/log_event_use_case.dart';
import 'package:flutter_lab/domain/use_cases/analytics/log_tap_event_use_case.dart';
import 'package:flutter_lab/domain/use_cases/analytics/log_view_event_use_case.dart';
import 'package:flutter_lab/domain/use_cases/analytics/set_default_event_parameters_use_case.dart';
import 'package:flutter_lab/domain/use_cases/analytics/set_user_property_use_case.dart';
import 'package:flutter_lab/domain/use_cases/app_store/get_app_store_url_use_case.dart';
import 'package:flutter_lab/domain/use_cases/battery/get_battery_level_use_case.dart';
import 'package:flutter_lab/domain/use_cases/clock/get_current_time_use_case.dart';
import 'package:flutter_lab/domain/use_cases/device_info/get_device_info_use_case.dart';
import 'package:flutter_lab/domain/use_cases/google_api/check_google_api_availability_use_case.dart';
import 'package:flutter_lab/domain/use_cases/in_app_review/check_review_availability_use_case.dart';
import 'package:flutter_lab/domain/use_cases/in_app_review/request_review_use_case.dart';
import 'package:flutter_lab/domain/use_cases/location/get_location_use_case.dart';
import 'package:flutter_lab/domain/use_cases/location/watch_location_use_case.dart';
import 'package:flutter_lab/domain/use_cases/max/initialize_max_use_case.dart';
import 'package:flutter_lab/domain/use_cases/max/load_rewarded_ad_use_case.dart';
import 'package:flutter_lab/domain/use_cases/max/show_mediation_debugger_use_case.dart';
import 'package:flutter_lab/domain/use_cases/max/show_rewarded_ad_use_case.dart';
import 'package:flutter_lab/domain/use_cases/native_button/watch_native_button_tap_use_case.dart';
import 'package:flutter_lab/domain/use_cases/network/watch_connectivity_use_case.dart';
import 'package:flutter_lab/domain/use_cases/performance/increment_metric_use_case.dart';
import 'package:flutter_lab/domain/use_cases/performance/put_attribute_use_case.dart';
import 'package:flutter_lab/domain/use_cases/performance/start_trace_use_case.dart';
import 'package:flutter_lab/domain/use_cases/performance/stop_trace_use_case.dart';
import 'package:flutter_lab/domain/use_cases/permission/get_permission_status_use_case.dart';
import 'package:flutter_lab/domain/use_cases/permission/open_app_settings_use_case.dart';
import 'package:flutter_lab/domain/use_cases/permission/request_permission_use_case.dart';
import 'package:flutter_lab/domain/use_cases/pet/clear_pet_cache_use_case.dart';
import 'package:flutter_lab/domain/use_cases/pet/list_pets_use_case.dart';
import 'package:flutter_lab/domain/use_cases/profile_passport/start_profile_passport_service_use_case.dart';
import 'package:flutter_lab/domain/use_cases/push_notification/on_push_token_refresh_use_case.dart';
import 'package:flutter_lab/domain/use_cases/push_notification/register_token_use_case.dart';
import 'package:flutter_lab/domain/use_cases/push_notification/request_push_notification_use_case.dart';
import 'package:flutter_lab/domain/use_cases/shortcut/copy_shortcut_icons_use_case.dart';
import 'package:flutter_lab/domain/use_cases/shortcut/delete_all_shortcut_icons_use_case.dart';
import 'package:flutter_lab/domain/use_cases/text_recognition/recognize_text_use_case.dart';
// import 'package:flutter_lab/flavors.dart';
import 'package:flutter_lab/gen/pigeon/pigeon.g.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:in_app_review/in_app_review.dart';
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
ListPetsUseCase listPetsUseCase(Ref ref) => ListPetsUseCase(
  petRepository: ref.read(petRepositoryProvider),
);

@riverpod
ClearListPetsCacheUseCase clearListPetsCacheUseCase(Ref ref) =>
    ClearListPetsCacheUseCase(
      petRepository: ref.read(petRepositoryProvider),
    );

@riverpod
ClearGetPetCacheUseCase clearGetPetCacheUseCase(Ref ref) =>
    ClearGetPetCacheUseCase(
      petRepository: ref.read(petRepositoryProvider),
    );

@riverpod
LocationRepository locationRepository(Ref ref) => PlatformLocationRepository();

@riverpod
BatteryGateway batteryGateway(Ref ref) => PlatformBatteryGateway();

@riverpod
GetBatteryLevelUseCase getBatteryLevelUseCase(Ref ref) =>
    GetBatteryLevelUseCase(
      batteryGateway: ref.read(batteryGatewayProvider),
    );

@riverpod
AgreementRepository agreementRepository(Ref ref) =>
    SharedPreferencesAgreementRepository(
      sharedPreferencesService: ref.read(sharedPreferencesServiceProvider),
    );

@riverpod
InitializeLatestAgreedDateUseCase initializeLatestAgreedDateUseCase(
  Ref ref,
) => InitializeLatestAgreedDateUseCase(
  agreementRepository: ref.read(agreementRepositoryProvider),
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
WatchLocationUseCase watchLocationUseCase(Ref ref) => WatchLocationUseCase(
  locationRepository: ref.read(locationRepositoryProvider),
);

@riverpod
SharedPreferencesAsync sharedPreferencesAsync(Ref ref) =>
    SharedPreferencesAsync();

// native button
@riverpod
NativeButtonGateway nativeButtonGateway(Ref ref) =>
    PlatformNativeButtonGateway();

@riverpod
WatchNativeButtonTapUseCase watchNativeButtonTapUseCase(Ref ref) =>
    WatchNativeButtonTapUseCase(
      nativeButtonGateway: ref.read(nativeButtonGatewayProvider),
    );

// push notification
@riverpod
PushNotificationRepository pushNotificationRepository(Ref ref) =>
    FirebaseMessagingPushNotificationRepository();

@riverpod
RequestPushNotificationUseCase requestPushNotificationUseCase(Ref ref) =>
    RequestPushNotificationUseCase(
      pushNotificationRepository: ref.read(pushNotificationRepositoryProvider),
    );

@riverpod
OnPushTokenRefreshUseCase onPushTokenRefreshUseCase(Ref ref) =>
    OnPushTokenRefreshUseCase(
      pushNotificationRepository: ref.read(pushNotificationRepositoryProvider),
    );

@riverpod
RegisterTokenUseCase registerTokenUseCase(Ref ref) => RegisterTokenUseCase(
  pushNotificationRepository: ref.read(pushNotificationRepositoryProvider),
);

/// Stream of push token refresh events.
@riverpod
Stream<String> onPushTokenRefresh(Ref ref) =>
    ref.read(onPushTokenRefreshUseCaseProvider).call();

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

// etag cache
@Riverpod(keepAlive: true)
EtagCacheRepository etagCacheRepository(Ref ref) => S3EtagCacheRepository();

// navigation
@riverpod
UrlNavigationListRepository urlNavigationListRepository(Ref ref) =>
    MockUrlNavigationListRepository();

// network
@riverpod
NetworkGateway networkGateway(Ref ref) => ConnectivityPlusNetworkGateway(
  connectivity: Connectivity(),
);

@riverpod
WatchConnectivityUseCase watchConnectivityUseCase(Ref ref) =>
    WatchConnectivityUseCase(
      networkGateway: ref.read(networkGatewayProvider),
    );

// app store
@riverpod
TargetPlatformType targetPlatformType(Ref ref) =>
    Platform.isIOS ? TargetPlatformType.iOS : TargetPlatformType.android;

@riverpod
AppStoreRepository appStoreRepository(Ref ref) => PlatformAppStoreRepository(
  targetPlatformType: ref.read(targetPlatformTypeProvider),
  appId: '',
  packageName: 'com.example.flutter_lab',
);

@riverpod
GetAppStoreUrlUseCase getAppStoreUrlUseCase(Ref ref) => GetAppStoreUrlUseCase(
  appStoreRepository: ref.read(appStoreRepositoryProvider),
);

// in-app review
@riverpod
InAppReviewRepository inAppReviewRepository(Ref ref) =>
    PluginInAppReviewRepository(
      inAppReview: InAppReview.instance,
    );

@riverpod
CheckReviewAvailabilityUseCase checkReviewAvailabilityUseCase(Ref ref) =>
    CheckReviewAvailabilityUseCase(
      inAppReviewRepository: ref.read(inAppReviewRepositoryProvider),
    );

@riverpod
RequestReviewUseCase requestReviewUseCase(Ref ref) => RequestReviewUseCase(
  inAppReviewRepository: ref.read(inAppReviewRepositoryProvider),
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

// permission
@riverpod
PermissionGateway permissionGateway(Ref ref) => PermissionHandlerGateway();

@riverpod
GetPermissionStatusUseCase getPermissionStatusUseCase(Ref ref) =>
    GetPermissionStatusUseCase(
      permissionGateway: ref.read(permissionGatewayProvider),
    );

@riverpod
RequestPermissionUseCase requestPermissionUseCase(Ref ref) =>
    RequestPermissionUseCase(
      permissionGateway: ref.read(permissionGatewayProvider),
    );

@riverpod
OpenAppSettingsUseCase openAppSettingsUseCase(Ref ref) =>
    OpenAppSettingsUseCase(
      permissionGateway: ref.read(permissionGatewayProvider),
    );

// clock
@riverpod
ClockGateway clockGateway(Ref ref) => ClockClockGateway();

@riverpod
GetCurrentTimeUseCase getCurrentTimeUseCase(Ref ref) => GetCurrentTimeUseCase(
  clockGateway: ref.read(clockGatewayProvider),
);

// device info
@riverpod
DeviceInfoGateway deviceInfoGateway(Ref ref) =>
    DeviceInfoPlusDeviceInfoGateway();

@riverpod
GetDeviceInfoUseCase getDeviceInfoUseCase(Ref ref) => GetDeviceInfoUseCase(
  deviceInfoGateway: ref.read(deviceInfoGatewayProvider),
);

// pigeon
@riverpod
GreetingApi greetingApi(Ref ref) => GreetingApi();

@riverpod
PigeonGateway pigeonGateway(Ref ref) => PigeonPigeonGateway();

// arutana
@Riverpod(keepAlive: true)
ArutanaGateway arutanaGateway(Ref ref) => PigeonArutanaGateway();

// profile passport
@Riverpod(keepAlive: true)
ProfilePassportGateway profilePassportGateway(Ref ref) =>
    PigeonProfilePassportGateway();

@riverpod
StartProfilePassportServiceUseCase startProfilePassportServiceUseCase(
  Ref ref,
) => StartProfilePassportServiceUseCase(
  profilePassportGateway: ref.read(profilePassportGatewayProvider),
);

// adjust
@Riverpod(keepAlive: true)
AdjustGateway adjustGateway(Ref ref) => MockAdjustGateway();

@riverpod
InitializeAdjustUseCase initializeAdjustUseCase(Ref ref) =>
    InitializeAdjustUseCase(
      adjustGateway: ref.read(adjustGatewayProvider),
    );

@riverpod
TrackEventUseCase trackEventUseCase(Ref ref) => TrackEventUseCase(
  adjustGateway: ref.read(adjustGatewayProvider),
);

@riverpod
GetAdidUseCase getAdidUseCase(Ref ref) => GetAdidUseCase(
  adjustGateway: ref.read(adjustGatewayProvider),
);

// max
@Riverpod(keepAlive: true)
MaxGateway maxGateway(Ref ref) => MockMaxGateway();

@riverpod
InitializeMaxUseCase initializeMaxUseCase(Ref ref) => InitializeMaxUseCase(
  maxGateway: ref.read(maxGatewayProvider),
);

@riverpod
LoadRewardedAdUseCase loadRewardedAdUseCase(Ref ref) => LoadRewardedAdUseCase(
  maxGateway: ref.read(maxGatewayProvider),
);

@riverpod
ShowRewardedAdUseCase showRewardedAdUseCase(Ref ref) => ShowRewardedAdUseCase(
  maxGateway: ref.read(maxGatewayProvider),
);

@riverpod
ShowMediationDebuggerUseCase showMediationDebuggerUseCase(Ref ref) =>
    ShowMediationDebuggerUseCase(
      maxGateway: ref.read(maxGatewayProvider),
    );

// adfurikun
@Riverpod(keepAlive: true)
AdfurikunGateway adfurikunGateway(Ref ref) => MockAdfurikunGateway();

@riverpod
InitializeAdfurikunInterstitialAdUseCase
initializeAdfurikunInterstitialAdUseCase(Ref ref) =>
    InitializeAdfurikunInterstitialAdUseCase(
      adfurikunGateway: ref.read(adfurikunGatewayProvider),
    );

@riverpod
LoadAdfurikunInterstitialAdUseCase loadAdfurikunInterstitialAdUseCase(
  Ref ref,
) => LoadAdfurikunInterstitialAdUseCase(
  adfurikunGateway: ref.read(adfurikunGatewayProvider),
);

@riverpod
PlayAdfurikunInterstitialAdUseCase playAdfurikunInterstitialAdUseCase(
  Ref ref,
) => PlayAdfurikunInterstitialAdUseCase(
  adfurikunGateway: ref.read(adfurikunGatewayProvider),
);

@riverpod
InitializeAdfurikunRewardAdUseCase initializeAdfurikunRewardAdUseCase(
  Ref ref,
) => InitializeAdfurikunRewardAdUseCase(
  adfurikunGateway: ref.read(adfurikunGatewayProvider),
);

@riverpod
LoadAdfurikunRewardAdUseCase loadAdfurikunRewardAdUseCase(
  Ref ref,
) => LoadAdfurikunRewardAdUseCase(
  adfurikunGateway: ref.read(adfurikunGatewayProvider),
);

@riverpod
PlayAdfurikunRewardAdUseCase playAdfurikunRewardAdUseCase(
  Ref ref,
) => PlayAdfurikunRewardAdUseCase(
  adfurikunGateway: ref.read(adfurikunGatewayProvider),
);

// analytics
@riverpod
AnalyticsGateway analyticsGateway(Ref ref) => FirebaseAnalyticsGateway();

@riverpod
SetDefaultEventParametersUseCase setDefaultEventParametersUseCase(
  Ref ref,
) => SetDefaultEventParametersUseCase(
  analyticsGateway: ref.read(analyticsGatewayProvider),
);

@riverpod
SetUserPropertyUseCase setUserPropertyUseCase(
  Ref ref,
) => SetUserPropertyUseCase(
  analyticsGateway: ref.read(analyticsGatewayProvider),
);

@riverpod
LogEventUseCase logEventUseCase(Ref ref) => LogEventUseCase(
  analyticsGateway: ref.read(analyticsGatewayProvider),
);

@riverpod
LogTapEventUseCase logTapEventUseCase(Ref ref) => LogTapEventUseCase(
  analyticsGateway: ref.read(analyticsGatewayProvider),
);

@riverpod
LogViewEventUseCase logViewEventUseCase(Ref ref) => LogViewEventUseCase(
  analyticsGateway: ref.read(analyticsGatewayProvider),
);

// performance
@Riverpod(keepAlive: true)
PerformanceGateway performanceGateway(Ref ref) => FirebasePerformanceGateway();

@riverpod
StartTraceUseCase startTraceUseCase(Ref ref) => StartTraceUseCase(
  performanceGateway: ref.read(performanceGatewayProvider),
);

@riverpod
StopTraceUseCase stopTraceUseCase(Ref ref) => StopTraceUseCase(
  performanceGateway: ref.read(performanceGatewayProvider),
);

@riverpod
IncrementMetricUseCase incrementMetricUseCase(Ref ref) =>
    IncrementMetricUseCase(
      performanceGateway: ref.read(performanceGatewayProvider),
    );

@riverpod
PutAttributeUseCase putAttributeUseCase(Ref ref) => PutAttributeUseCase(
  performanceGateway: ref.read(performanceGatewayProvider),
);

// google api
@riverpod
GoogleApiGateway googleApiGateway(Ref ref) => PluginGoogleApiGateway();

@riverpod
CheckGoogleApiAvailabilityUseCase checkGoogleApiAvailabilityUseCase(
  Ref ref,
) => CheckGoogleApiAvailabilityUseCase(
  googleApiGateway: ref.read(googleApiGatewayProvider),
);
