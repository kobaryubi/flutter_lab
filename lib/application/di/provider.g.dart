// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dio)
const dioProvider = DioProvider._();

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  const DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'ce1bb28487aa038e7abd11780b439f309a055888';

@ProviderFor(petRepository)
const petRepositoryProvider = PetRepositoryProvider._();

final class PetRepositoryProvider
    extends $FunctionalProvider<PetRepository, PetRepository, PetRepository>
    with $Provider<PetRepository> {
  const PetRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'petRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$petRepositoryHash();

  @$internal
  @override
  $ProviderElement<PetRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PetRepository create(Ref ref) {
    return petRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PetRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PetRepository>(value),
    );
  }
}

String _$petRepositoryHash() => r'224a4aa0fc38326d588fbcbb4759763feb8e5ba6';

@ProviderFor(locationRepository)
const locationRepositoryProvider = LocationRepositoryProvider._();

final class LocationRepositoryProvider
    extends
        $FunctionalProvider<
          LocationRepository,
          LocationRepository,
          LocationRepository
        >
    with $Provider<LocationRepository> {
  const LocationRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationRepositoryHash();

  @$internal
  @override
  $ProviderElement<LocationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LocationRepository create(Ref ref) {
    return locationRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocationRepository>(value),
    );
  }
}

String _$locationRepositoryHash() =>
    r'f22b20bc0ea98b18d2202b51bc92bd684065183e';

@ProviderFor(batteryGateway)
const batteryGatewayProvider = BatteryGatewayProvider._();

final class BatteryGatewayProvider
    extends $FunctionalProvider<BatteryGateway, BatteryGateway, BatteryGateway>
    with $Provider<BatteryGateway> {
  const BatteryGatewayProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'batteryGatewayProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$batteryGatewayHash();

  @$internal
  @override
  $ProviderElement<BatteryGateway> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BatteryGateway create(Ref ref) {
    return batteryGateway(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BatteryGateway value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BatteryGateway>(value),
    );
  }
}

String _$batteryGatewayHash() => r'e7fcd58911c7e666095ad778d2e128a1e3cf3e64';

@ProviderFor(getBatteryLevelUseCase)
const getBatteryLevelUseCaseProvider = GetBatteryLevelUseCaseProvider._();

final class GetBatteryLevelUseCaseProvider
    extends
        $FunctionalProvider<
          GetBatteryLevelUseCase,
          GetBatteryLevelUseCase,
          GetBatteryLevelUseCase
        >
    with $Provider<GetBatteryLevelUseCase> {
  const GetBatteryLevelUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getBatteryLevelUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getBatteryLevelUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetBatteryLevelUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetBatteryLevelUseCase create(Ref ref) {
    return getBatteryLevelUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetBatteryLevelUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetBatteryLevelUseCase>(value),
    );
  }
}

String _$getBatteryLevelUseCaseHash() =>
    r'50b619cd2bff20eb438850ebe78833dea80d06e8';

@ProviderFor(agreementRepository)
const agreementRepositoryProvider = AgreementRepositoryProvider._();

final class AgreementRepositoryProvider
    extends
        $FunctionalProvider<
          AgreementRepository,
          AgreementRepository,
          AgreementRepository
        >
    with $Provider<AgreementRepository> {
  const AgreementRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'agreementRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$agreementRepositoryHash();

  @$internal
  @override
  $ProviderElement<AgreementRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AgreementRepository create(Ref ref) {
    return agreementRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AgreementRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AgreementRepository>(value),
    );
  }
}

String _$agreementRepositoryHash() =>
    r'42511147cf3e2a5fc99bfbedb32f9a9ea822feb2';

@ProviderFor(initializeLatestAgreedDateUseCase)
const initializeLatestAgreedDateUseCaseProvider =
    InitializeLatestAgreedDateUseCaseProvider._();

final class InitializeLatestAgreedDateUseCaseProvider
    extends
        $FunctionalProvider<
          InitializeLatestAgreedDateUseCase,
          InitializeLatestAgreedDateUseCase,
          InitializeLatestAgreedDateUseCase
        >
    with $Provider<InitializeLatestAgreedDateUseCase> {
  const InitializeLatestAgreedDateUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'initializeLatestAgreedDateUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$initializeLatestAgreedDateUseCaseHash();

  @$internal
  @override
  $ProviderElement<InitializeLatestAgreedDateUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  InitializeLatestAgreedDateUseCase create(Ref ref) {
    return initializeLatestAgreedDateUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InitializeLatestAgreedDateUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InitializeLatestAgreedDateUseCase>(
        value,
      ),
    );
  }
}

String _$initializeLatestAgreedDateUseCaseHash() =>
    r'0b68ae2c2578f16e9511f277e7dc7914850f2845';

@ProviderFor(shortcutIconGateway)
const shortcutIconGatewayProvider = ShortcutIconGatewayProvider._();

final class ShortcutIconGatewayProvider
    extends
        $FunctionalProvider<
          ShortcutIconGateway,
          ShortcutIconGateway,
          ShortcutIconGateway
        >
    with $Provider<ShortcutIconGateway> {
  const ShortcutIconGatewayProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shortcutIconGatewayProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shortcutIconGatewayHash();

  @$internal
  @override
  $ProviderElement<ShortcutIconGateway> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ShortcutIconGateway create(Ref ref) {
    return shortcutIconGateway(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ShortcutIconGateway value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ShortcutIconGateway>(value),
    );
  }
}

String _$shortcutIconGatewayHash() =>
    r'2fc913d3abb50acfeaa14ce5a5148e0d292d24c6';

@ProviderFor(shortcutRepository)
const shortcutRepositoryProvider = ShortcutRepositoryProvider._();

final class ShortcutRepositoryProvider
    extends
        $FunctionalProvider<
          ShortcutRepository,
          ShortcutRepository,
          ShortcutRepository
        >
    with $Provider<ShortcutRepository> {
  const ShortcutRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shortcutRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shortcutRepositoryHash();

  @$internal
  @override
  $ProviderElement<ShortcutRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ShortcutRepository create(Ref ref) {
    return shortcutRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ShortcutRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ShortcutRepository>(value),
    );
  }
}

String _$shortcutRepositoryHash() =>
    r'5f497928f3b59631c23c9826ce37a43b14c1b14a';

@ProviderFor(sharedPreferencesService)
const sharedPreferencesServiceProvider = SharedPreferencesServiceProvider._();

final class SharedPreferencesServiceProvider
    extends
        $FunctionalProvider<
          SharedPreferencesService,
          SharedPreferencesService,
          SharedPreferencesService
        >
    with $Provider<SharedPreferencesService> {
  const SharedPreferencesServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sharedPreferencesServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sharedPreferencesServiceHash();

  @$internal
  @override
  $ProviderElement<SharedPreferencesService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SharedPreferencesService create(Ref ref) {
    return sharedPreferencesService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SharedPreferencesService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SharedPreferencesService>(value),
    );
  }
}

String _$sharedPreferencesServiceHash() =>
    r'90da7b6ed2dfb4278077cd27bcfcf8d7828e8db4';

@ProviderFor(getLocationUseCase)
const getLocationUseCaseProvider = GetLocationUseCaseProvider._();

final class GetLocationUseCaseProvider
    extends
        $FunctionalProvider<
          GetLocationUseCase,
          GetLocationUseCase,
          GetLocationUseCase
        >
    with $Provider<GetLocationUseCase> {
  const GetLocationUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getLocationUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getLocationUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetLocationUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetLocationUseCase create(Ref ref) {
    return getLocationUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetLocationUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetLocationUseCase>(value),
    );
  }
}

String _$getLocationUseCaseHash() =>
    r'd04a80e796a6b4c824e70d5c29e0de887088ad78';

@ProviderFor(watchLocationUseCase)
const watchLocationUseCaseProvider = WatchLocationUseCaseProvider._();

final class WatchLocationUseCaseProvider
    extends
        $FunctionalProvider<
          WatchLocationUseCase,
          WatchLocationUseCase,
          WatchLocationUseCase
        >
    with $Provider<WatchLocationUseCase> {
  const WatchLocationUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'watchLocationUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$watchLocationUseCaseHash();

  @$internal
  @override
  $ProviderElement<WatchLocationUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WatchLocationUseCase create(Ref ref) {
    return watchLocationUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WatchLocationUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WatchLocationUseCase>(value),
    );
  }
}

String _$watchLocationUseCaseHash() =>
    r'288761e4e2b94a34c38b18f65da756402b7e94cf';

@ProviderFor(sharedPreferencesAsync)
const sharedPreferencesAsyncProvider = SharedPreferencesAsyncProvider._();

final class SharedPreferencesAsyncProvider
    extends
        $FunctionalProvider<
          SharedPreferencesAsync,
          SharedPreferencesAsync,
          SharedPreferencesAsync
        >
    with $Provider<SharedPreferencesAsync> {
  const SharedPreferencesAsyncProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sharedPreferencesAsyncProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sharedPreferencesAsyncHash();

  @$internal
  @override
  $ProviderElement<SharedPreferencesAsync> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SharedPreferencesAsync create(Ref ref) {
    return sharedPreferencesAsync(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SharedPreferencesAsync value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SharedPreferencesAsync>(value),
    );
  }
}

String _$sharedPreferencesAsyncHash() =>
    r'4185ee00922a4901388f3e7566511208cbbe626b';

@ProviderFor(nativeButtonGateway)
const nativeButtonGatewayProvider = NativeButtonGatewayProvider._();

final class NativeButtonGatewayProvider
    extends
        $FunctionalProvider<
          NativeButtonGateway,
          NativeButtonGateway,
          NativeButtonGateway
        >
    with $Provider<NativeButtonGateway> {
  const NativeButtonGatewayProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'nativeButtonGatewayProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$nativeButtonGatewayHash();

  @$internal
  @override
  $ProviderElement<NativeButtonGateway> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NativeButtonGateway create(Ref ref) {
    return nativeButtonGateway(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NativeButtonGateway value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NativeButtonGateway>(value),
    );
  }
}

String _$nativeButtonGatewayHash() =>
    r'61f40ca78d7b8c019b0b94896a1053a3cb43f7ea';

@ProviderFor(watchNativeButtonTapUseCase)
const watchNativeButtonTapUseCaseProvider =
    WatchNativeButtonTapUseCaseProvider._();

final class WatchNativeButtonTapUseCaseProvider
    extends
        $FunctionalProvider<
          WatchNativeButtonTapUseCase,
          WatchNativeButtonTapUseCase,
          WatchNativeButtonTapUseCase
        >
    with $Provider<WatchNativeButtonTapUseCase> {
  const WatchNativeButtonTapUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'watchNativeButtonTapUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$watchNativeButtonTapUseCaseHash();

  @$internal
  @override
  $ProviderElement<WatchNativeButtonTapUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WatchNativeButtonTapUseCase create(Ref ref) {
    return watchNativeButtonTapUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WatchNativeButtonTapUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WatchNativeButtonTapUseCase>(value),
    );
  }
}

String _$watchNativeButtonTapUseCaseHash() =>
    r'8b1b528f60801f75b269cc3b20b3814cb04789c9';

@ProviderFor(pushNotificationRepository)
const pushNotificationRepositoryProvider =
    PushNotificationRepositoryProvider._();

final class PushNotificationRepositoryProvider
    extends
        $FunctionalProvider<
          PushNotificationRepository,
          PushNotificationRepository,
          PushNotificationRepository
        >
    with $Provider<PushNotificationRepository> {
  const PushNotificationRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pushNotificationRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pushNotificationRepositoryHash();

  @$internal
  @override
  $ProviderElement<PushNotificationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PushNotificationRepository create(Ref ref) {
    return pushNotificationRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PushNotificationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PushNotificationRepository>(value),
    );
  }
}

String _$pushNotificationRepositoryHash() =>
    r'89b774292cdb47e914aa2f04598507bc0adca5f0';

@ProviderFor(requestPushNotificationUseCase)
const requestPushNotificationUseCaseProvider =
    RequestPushNotificationUseCaseProvider._();

final class RequestPushNotificationUseCaseProvider
    extends
        $FunctionalProvider<
          RequestPushNotificationUseCase,
          RequestPushNotificationUseCase,
          RequestPushNotificationUseCase
        >
    with $Provider<RequestPushNotificationUseCase> {
  const RequestPushNotificationUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'requestPushNotificationUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$requestPushNotificationUseCaseHash();

  @$internal
  @override
  $ProviderElement<RequestPushNotificationUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RequestPushNotificationUseCase create(Ref ref) {
    return requestPushNotificationUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RequestPushNotificationUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RequestPushNotificationUseCase>(
        value,
      ),
    );
  }
}

String _$requestPushNotificationUseCaseHash() =>
    r'1e1d5b9408d9d081d1a4af7f2600a6e7f1aaaf6c';

@ProviderFor(onTokenRefreshUseCase)
const onTokenRefreshUseCaseProvider = OnTokenRefreshUseCaseProvider._();

final class OnTokenRefreshUseCaseProvider
    extends
        $FunctionalProvider<
          OnTokenRefreshUseCase,
          OnTokenRefreshUseCase,
          OnTokenRefreshUseCase
        >
    with $Provider<OnTokenRefreshUseCase> {
  const OnTokenRefreshUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'onTokenRefreshUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$onTokenRefreshUseCaseHash();

  @$internal
  @override
  $ProviderElement<OnTokenRefreshUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  OnTokenRefreshUseCase create(Ref ref) {
    return onTokenRefreshUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OnTokenRefreshUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OnTokenRefreshUseCase>(value),
    );
  }
}

String _$onTokenRefreshUseCaseHash() =>
    r'5d98f22ce195f0675c2c18766a69e00ae171af1b';

@ProviderFor(registerTokenUseCase)
const registerTokenUseCaseProvider = RegisterTokenUseCaseProvider._();

final class RegisterTokenUseCaseProvider
    extends
        $FunctionalProvider<
          RegisterTokenUseCase,
          RegisterTokenUseCase,
          RegisterTokenUseCase
        >
    with $Provider<RegisterTokenUseCase> {
  const RegisterTokenUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'registerTokenUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$registerTokenUseCaseHash();

  @$internal
  @override
  $ProviderElement<RegisterTokenUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RegisterTokenUseCase create(Ref ref) {
    return registerTokenUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RegisterTokenUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RegisterTokenUseCase>(value),
    );
  }
}

String _$registerTokenUseCaseHash() =>
    r'b2f98225e13cea9f7b8f150e25d8bad60b94fd65';

/// Stream of FCM token refresh events.

@ProviderFor(onTokenRefresh)
const onTokenRefreshProvider = OnTokenRefreshProvider._();

/// Stream of FCM token refresh events.

final class OnTokenRefreshProvider
    extends $FunctionalProvider<AsyncValue<String>, String, Stream<String>>
    with $FutureModifier<String>, $StreamProvider<String> {
  /// Stream of FCM token refresh events.
  const OnTokenRefreshProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'onTokenRefreshProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$onTokenRefreshHash();

  @$internal
  @override
  $StreamProviderElement<String> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<String> create(Ref ref) {
    return onTokenRefresh(ref);
  }
}

String _$onTokenRefreshHash() => r'af6578b7746340e19f80170588ccc29190fbbc54';

@ProviderFor(copyShortcutIconsUseCase)
const copyShortcutIconsUseCaseProvider = CopyShortcutIconsUseCaseProvider._();

final class CopyShortcutIconsUseCaseProvider
    extends
        $FunctionalProvider<
          CopyShortcutIconsUseCase,
          CopyShortcutIconsUseCase,
          CopyShortcutIconsUseCase
        >
    with $Provider<CopyShortcutIconsUseCase> {
  const CopyShortcutIconsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'copyShortcutIconsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$copyShortcutIconsUseCaseHash();

  @$internal
  @override
  $ProviderElement<CopyShortcutIconsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CopyShortcutIconsUseCase create(Ref ref) {
    return copyShortcutIconsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CopyShortcutIconsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CopyShortcutIconsUseCase>(value),
    );
  }
}

String _$copyShortcutIconsUseCaseHash() =>
    r'80315198a9cbca844d1416b028e0bead6ad8ffd3';

@ProviderFor(deleteAllShortcutIconsUseCase)
const deleteAllShortcutIconsUseCaseProvider =
    DeleteAllShortcutIconsUseCaseProvider._();

final class DeleteAllShortcutIconsUseCaseProvider
    extends
        $FunctionalProvider<
          DeleteAllShortcutIconsUseCase,
          DeleteAllShortcutIconsUseCase,
          DeleteAllShortcutIconsUseCase
        >
    with $Provider<DeleteAllShortcutIconsUseCase> {
  const DeleteAllShortcutIconsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteAllShortcutIconsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteAllShortcutIconsUseCaseHash();

  @$internal
  @override
  $ProviderElement<DeleteAllShortcutIconsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DeleteAllShortcutIconsUseCase create(Ref ref) {
    return deleteAllShortcutIconsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeleteAllShortcutIconsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeleteAllShortcutIconsUseCase>(
        value,
      ),
    );
  }
}

String _$deleteAllShortcutIconsUseCaseHash() =>
    r'8e1cbef06a76fb3ee53c7e43169bc19844e69e76';

@ProviderFor(httpCacheRepository)
const httpCacheRepositoryProvider = HttpCacheRepositoryProvider._();

final class HttpCacheRepositoryProvider
    extends
        $FunctionalProvider<
          HttpCacheRepository,
          HttpCacheRepository,
          HttpCacheRepository
        >
    with $Provider<HttpCacheRepository> {
  const HttpCacheRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'httpCacheRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$httpCacheRepositoryHash();

  @$internal
  @override
  $ProviderElement<HttpCacheRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  HttpCacheRepository create(Ref ref) {
    return httpCacheRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HttpCacheRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HttpCacheRepository>(value),
    );
  }
}

String _$httpCacheRepositoryHash() =>
    r'a03bba825f0d7767f20a781fbc95023ddb8e6e6d';

@ProviderFor(etagCacheRepository)
const etagCacheRepositoryProvider = EtagCacheRepositoryProvider._();

final class EtagCacheRepositoryProvider
    extends
        $FunctionalProvider<
          EtagCacheRepository,
          EtagCacheRepository,
          EtagCacheRepository
        >
    with $Provider<EtagCacheRepository> {
  const EtagCacheRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'etagCacheRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$etagCacheRepositoryHash();

  @$internal
  @override
  $ProviderElement<EtagCacheRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EtagCacheRepository create(Ref ref) {
    return etagCacheRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EtagCacheRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EtagCacheRepository>(value),
    );
  }
}

String _$etagCacheRepositoryHash() =>
    r'b854e6860c4dfaa79b657cb35880468b1cc504ed';

@ProviderFor(urlNavigationListRepository)
const urlNavigationListRepositoryProvider =
    UrlNavigationListRepositoryProvider._();

final class UrlNavigationListRepositoryProvider
    extends
        $FunctionalProvider<
          UrlNavigationListRepository,
          UrlNavigationListRepository,
          UrlNavigationListRepository
        >
    with $Provider<UrlNavigationListRepository> {
  const UrlNavigationListRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'urlNavigationListRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$urlNavigationListRepositoryHash();

  @$internal
  @override
  $ProviderElement<UrlNavigationListRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UrlNavigationListRepository create(Ref ref) {
    return urlNavigationListRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UrlNavigationListRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UrlNavigationListRepository>(value),
    );
  }
}

String _$urlNavigationListRepositoryHash() =>
    r'd24d6654cf7a56cfd23c797f2f986299a9c96968';

@ProviderFor(networkGateway)
const networkGatewayProvider = NetworkGatewayProvider._();

final class NetworkGatewayProvider
    extends $FunctionalProvider<NetworkGateway, NetworkGateway, NetworkGateway>
    with $Provider<NetworkGateway> {
  const NetworkGatewayProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'networkGatewayProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$networkGatewayHash();

  @$internal
  @override
  $ProviderElement<NetworkGateway> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  NetworkGateway create(Ref ref) {
    return networkGateway(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NetworkGateway value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NetworkGateway>(value),
    );
  }
}

String _$networkGatewayHash() => r'b5e21e394667b37019025145b2d520343336e828';

@ProviderFor(watchConnectivityUseCase)
const watchConnectivityUseCaseProvider = WatchConnectivityUseCaseProvider._();

final class WatchConnectivityUseCaseProvider
    extends
        $FunctionalProvider<
          WatchConnectivityUseCase,
          WatchConnectivityUseCase,
          WatchConnectivityUseCase
        >
    with $Provider<WatchConnectivityUseCase> {
  const WatchConnectivityUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'watchConnectivityUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$watchConnectivityUseCaseHash();

  @$internal
  @override
  $ProviderElement<WatchConnectivityUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WatchConnectivityUseCase create(Ref ref) {
    return watchConnectivityUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WatchConnectivityUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WatchConnectivityUseCase>(value),
    );
  }
}

String _$watchConnectivityUseCaseHash() =>
    r'8020c3d3db9b73b885cd47229f864c9fbd704b51';

@ProviderFor(targetPlatformType)
const targetPlatformTypeProvider = TargetPlatformTypeProvider._();

final class TargetPlatformTypeProvider
    extends
        $FunctionalProvider<
          TargetPlatformType,
          TargetPlatformType,
          TargetPlatformType
        >
    with $Provider<TargetPlatformType> {
  const TargetPlatformTypeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'targetPlatformTypeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$targetPlatformTypeHash();

  @$internal
  @override
  $ProviderElement<TargetPlatformType> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TargetPlatformType create(Ref ref) {
    return targetPlatformType(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TargetPlatformType value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TargetPlatformType>(value),
    );
  }
}

String _$targetPlatformTypeHash() =>
    r'14b6c49179a3336d4ba2b26db54a66a77fdce147';

@ProviderFor(appStoreRepository)
const appStoreRepositoryProvider = AppStoreRepositoryProvider._();

final class AppStoreRepositoryProvider
    extends
        $FunctionalProvider<
          AppStoreRepository,
          AppStoreRepository,
          AppStoreRepository
        >
    with $Provider<AppStoreRepository> {
  const AppStoreRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appStoreRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appStoreRepositoryHash();

  @$internal
  @override
  $ProviderElement<AppStoreRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AppStoreRepository create(Ref ref) {
    return appStoreRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppStoreRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppStoreRepository>(value),
    );
  }
}

String _$appStoreRepositoryHash() =>
    r'171c29a2a57a742e561e68a158453a6d001ffaf5';

@ProviderFor(getAppStoreUrlUseCase)
const getAppStoreUrlUseCaseProvider = GetAppStoreUrlUseCaseProvider._();

final class GetAppStoreUrlUseCaseProvider
    extends
        $FunctionalProvider<
          GetAppStoreUrlUseCase,
          GetAppStoreUrlUseCase,
          GetAppStoreUrlUseCase
        >
    with $Provider<GetAppStoreUrlUseCase> {
  const GetAppStoreUrlUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAppStoreUrlUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAppStoreUrlUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAppStoreUrlUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAppStoreUrlUseCase create(Ref ref) {
    return getAppStoreUrlUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAppStoreUrlUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAppStoreUrlUseCase>(value),
    );
  }
}

String _$getAppStoreUrlUseCaseHash() =>
    r'b4bb16b90bb6fc01a17ad6bab059779733472b9f';

@ProviderFor(inAppReviewRepository)
const inAppReviewRepositoryProvider = InAppReviewRepositoryProvider._();

final class InAppReviewRepositoryProvider
    extends
        $FunctionalProvider<
          InAppReviewRepository,
          InAppReviewRepository,
          InAppReviewRepository
        >
    with $Provider<InAppReviewRepository> {
  const InAppReviewRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'inAppReviewRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$inAppReviewRepositoryHash();

  @$internal
  @override
  $ProviderElement<InAppReviewRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  InAppReviewRepository create(Ref ref) {
    return inAppReviewRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InAppReviewRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InAppReviewRepository>(value),
    );
  }
}

String _$inAppReviewRepositoryHash() =>
    r'3bc4b475842ddd331612bbe39e0bcae537acf27c';

@ProviderFor(checkReviewAvailabilityUseCase)
const checkReviewAvailabilityUseCaseProvider =
    CheckReviewAvailabilityUseCaseProvider._();

final class CheckReviewAvailabilityUseCaseProvider
    extends
        $FunctionalProvider<
          CheckReviewAvailabilityUseCase,
          CheckReviewAvailabilityUseCase,
          CheckReviewAvailabilityUseCase
        >
    with $Provider<CheckReviewAvailabilityUseCase> {
  const CheckReviewAvailabilityUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checkReviewAvailabilityUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$checkReviewAvailabilityUseCaseHash();

  @$internal
  @override
  $ProviderElement<CheckReviewAvailabilityUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CheckReviewAvailabilityUseCase create(Ref ref) {
    return checkReviewAvailabilityUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckReviewAvailabilityUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckReviewAvailabilityUseCase>(
        value,
      ),
    );
  }
}

String _$checkReviewAvailabilityUseCaseHash() =>
    r'3055c3d31cc50625f3827b41968f610db36626b0';

@ProviderFor(requestReviewUseCase)
const requestReviewUseCaseProvider = RequestReviewUseCaseProvider._();

final class RequestReviewUseCaseProvider
    extends
        $FunctionalProvider<
          RequestReviewUseCase,
          RequestReviewUseCase,
          RequestReviewUseCase
        >
    with $Provider<RequestReviewUseCase> {
  const RequestReviewUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'requestReviewUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$requestReviewUseCaseHash();

  @$internal
  @override
  $ProviderElement<RequestReviewUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RequestReviewUseCase create(Ref ref) {
    return requestReviewUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RequestReviewUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RequestReviewUseCase>(value),
    );
  }
}

String _$requestReviewUseCaseHash() =>
    r'851809504ce3627441ec9cd7c5f0214932e871e4';

@ProviderFor(textRecognitionGateway)
const textRecognitionGatewayProvider = TextRecognitionGatewayProvider._();

final class TextRecognitionGatewayProvider
    extends
        $FunctionalProvider<
          TextRecognitionGateway,
          TextRecognitionGateway,
          TextRecognitionGateway
        >
    with $Provider<TextRecognitionGateway> {
  const TextRecognitionGatewayProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'textRecognitionGatewayProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$textRecognitionGatewayHash();

  @$internal
  @override
  $ProviderElement<TextRecognitionGateway> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TextRecognitionGateway create(Ref ref) {
    return textRecognitionGateway(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TextRecognitionGateway value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TextRecognitionGateway>(value),
    );
  }
}

String _$textRecognitionGatewayHash() =>
    r'ae3004ea99d40abda6f84ef91c986421c86ca54d';

@ProviderFor(recognizeTextUseCase)
const recognizeTextUseCaseProvider = RecognizeTextUseCaseProvider._();

final class RecognizeTextUseCaseProvider
    extends
        $FunctionalProvider<
          RecognizeTextUseCase,
          RecognizeTextUseCase,
          RecognizeTextUseCase
        >
    with $Provider<RecognizeTextUseCase> {
  const RecognizeTextUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'recognizeTextUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$recognizeTextUseCaseHash();

  @$internal
  @override
  $ProviderElement<RecognizeTextUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RecognizeTextUseCase create(Ref ref) {
    return recognizeTextUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RecognizeTextUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RecognizeTextUseCase>(value),
    );
  }
}

String _$recognizeTextUseCaseHash() =>
    r'f63b260e9ef1cc1f39774c72c71e2b51153572f6';

@ProviderFor(permissionGateway)
const permissionGatewayProvider = PermissionGatewayProvider._();

final class PermissionGatewayProvider
    extends
        $FunctionalProvider<
          PermissionGateway,
          PermissionGateway,
          PermissionGateway
        >
    with $Provider<PermissionGateway> {
  const PermissionGatewayProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'permissionGatewayProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$permissionGatewayHash();

  @$internal
  @override
  $ProviderElement<PermissionGateway> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PermissionGateway create(Ref ref) {
    return permissionGateway(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PermissionGateway value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PermissionGateway>(value),
    );
  }
}

String _$permissionGatewayHash() => r'91e51db41d9dcff5a261c47d286b9e689feb85ea';

@ProviderFor(getPermissionStatusUseCase)
const getPermissionStatusUseCaseProvider =
    GetPermissionStatusUseCaseProvider._();

final class GetPermissionStatusUseCaseProvider
    extends
        $FunctionalProvider<
          GetPermissionStatusUseCase,
          GetPermissionStatusUseCase,
          GetPermissionStatusUseCase
        >
    with $Provider<GetPermissionStatusUseCase> {
  const GetPermissionStatusUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPermissionStatusUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPermissionStatusUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetPermissionStatusUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetPermissionStatusUseCase create(Ref ref) {
    return getPermissionStatusUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetPermissionStatusUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetPermissionStatusUseCase>(value),
    );
  }
}

String _$getPermissionStatusUseCaseHash() =>
    r'cfc806c9b957eb22ffafff191806bbc74cdab4b9';

@ProviderFor(requestPermissionUseCase)
const requestPermissionUseCaseProvider = RequestPermissionUseCaseProvider._();

final class RequestPermissionUseCaseProvider
    extends
        $FunctionalProvider<
          RequestPermissionUseCase,
          RequestPermissionUseCase,
          RequestPermissionUseCase
        >
    with $Provider<RequestPermissionUseCase> {
  const RequestPermissionUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'requestPermissionUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$requestPermissionUseCaseHash();

  @$internal
  @override
  $ProviderElement<RequestPermissionUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RequestPermissionUseCase create(Ref ref) {
    return requestPermissionUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RequestPermissionUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RequestPermissionUseCase>(value),
    );
  }
}

String _$requestPermissionUseCaseHash() =>
    r'1251355b9ed6ba7c3f2ee340b5368796f82e9eec';

@ProviderFor(openAppSettingsUseCase)
const openAppSettingsUseCaseProvider = OpenAppSettingsUseCaseProvider._();

final class OpenAppSettingsUseCaseProvider
    extends
        $FunctionalProvider<
          OpenAppSettingsUseCase,
          OpenAppSettingsUseCase,
          OpenAppSettingsUseCase
        >
    with $Provider<OpenAppSettingsUseCase> {
  const OpenAppSettingsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'openAppSettingsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$openAppSettingsUseCaseHash();

  @$internal
  @override
  $ProviderElement<OpenAppSettingsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  OpenAppSettingsUseCase create(Ref ref) {
    return openAppSettingsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OpenAppSettingsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OpenAppSettingsUseCase>(value),
    );
  }
}

String _$openAppSettingsUseCaseHash() =>
    r'39323954e8668aabda7a4d6598065f27890a44ac';

@ProviderFor(clockGateway)
const clockGatewayProvider = ClockGatewayProvider._();

final class ClockGatewayProvider
    extends $FunctionalProvider<ClockGateway, ClockGateway, ClockGateway>
    with $Provider<ClockGateway> {
  const ClockGatewayProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clockGatewayProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clockGatewayHash();

  @$internal
  @override
  $ProviderElement<ClockGateway> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ClockGateway create(Ref ref) {
    return clockGateway(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClockGateway value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClockGateway>(value),
    );
  }
}

String _$clockGatewayHash() => r'340f0e4ce332314d0016b74d2085c5857f4f23c7';

@ProviderFor(getCurrentTimeUseCase)
const getCurrentTimeUseCaseProvider = GetCurrentTimeUseCaseProvider._();

final class GetCurrentTimeUseCaseProvider
    extends
        $FunctionalProvider<
          GetCurrentTimeUseCase,
          GetCurrentTimeUseCase,
          GetCurrentTimeUseCase
        >
    with $Provider<GetCurrentTimeUseCase> {
  const GetCurrentTimeUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getCurrentTimeUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getCurrentTimeUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetCurrentTimeUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetCurrentTimeUseCase create(Ref ref) {
    return getCurrentTimeUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetCurrentTimeUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetCurrentTimeUseCase>(value),
    );
  }
}

String _$getCurrentTimeUseCaseHash() =>
    r'2c05db061df0e28b222bb4ba001f5eb583281465';

@ProviderFor(deviceInfoGateway)
const deviceInfoGatewayProvider = DeviceInfoGatewayProvider._();

final class DeviceInfoGatewayProvider
    extends
        $FunctionalProvider<
          DeviceInfoGateway,
          DeviceInfoGateway,
          DeviceInfoGateway
        >
    with $Provider<DeviceInfoGateway> {
  const DeviceInfoGatewayProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deviceInfoGatewayProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deviceInfoGatewayHash();

  @$internal
  @override
  $ProviderElement<DeviceInfoGateway> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DeviceInfoGateway create(Ref ref) {
    return deviceInfoGateway(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeviceInfoGateway value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeviceInfoGateway>(value),
    );
  }
}

String _$deviceInfoGatewayHash() => r'5a8b8307897ec70336c873de8ca20e23ec0021af';

@ProviderFor(getDeviceInfoUseCase)
const getDeviceInfoUseCaseProvider = GetDeviceInfoUseCaseProvider._();

final class GetDeviceInfoUseCaseProvider
    extends
        $FunctionalProvider<
          GetDeviceInfoUseCase,
          GetDeviceInfoUseCase,
          GetDeviceInfoUseCase
        >
    with $Provider<GetDeviceInfoUseCase> {
  const GetDeviceInfoUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getDeviceInfoUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getDeviceInfoUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetDeviceInfoUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetDeviceInfoUseCase create(Ref ref) {
    return getDeviceInfoUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetDeviceInfoUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetDeviceInfoUseCase>(value),
    );
  }
}

String _$getDeviceInfoUseCaseHash() =>
    r'6f2693c828ffbbd33118d0f368e50e4dcf3fab7e';

@ProviderFor(greetingApi)
const greetingApiProvider = GreetingApiProvider._();

final class GreetingApiProvider
    extends $FunctionalProvider<GreetingApi, GreetingApi, GreetingApi>
    with $Provider<GreetingApi> {
  const GreetingApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'greetingApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$greetingApiHash();

  @$internal
  @override
  $ProviderElement<GreetingApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GreetingApi create(Ref ref) {
    return greetingApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GreetingApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GreetingApi>(value),
    );
  }
}

String _$greetingApiHash() => r'ca009d12533450417fc696ceaafcb74dd4a5738a';

@ProviderFor(pigeonGateway)
const pigeonGatewayProvider = PigeonGatewayProvider._();

final class PigeonGatewayProvider
    extends $FunctionalProvider<PigeonGateway, PigeonGateway, PigeonGateway>
    with $Provider<PigeonGateway> {
  const PigeonGatewayProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pigeonGatewayProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pigeonGatewayHash();

  @$internal
  @override
  $ProviderElement<PigeonGateway> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PigeonGateway create(Ref ref) {
    return pigeonGateway(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PigeonGateway value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PigeonGateway>(value),
    );
  }
}

String _$pigeonGatewayHash() => r'e7e9283b95eab8c82494d0c7be649825c797b615';

@ProviderFor(arutanaGateway)
const arutanaGatewayProvider = ArutanaGatewayProvider._();

final class ArutanaGatewayProvider
    extends $FunctionalProvider<ArutanaGateway, ArutanaGateway, ArutanaGateway>
    with $Provider<ArutanaGateway> {
  const ArutanaGatewayProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'arutanaGatewayProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$arutanaGatewayHash();

  @$internal
  @override
  $ProviderElement<ArutanaGateway> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ArutanaGateway create(Ref ref) {
    return arutanaGateway(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ArutanaGateway value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ArutanaGateway>(value),
    );
  }
}

String _$arutanaGatewayHash() => r'471876ccb0ccd0aa88b1b0857dee0ea1d93dce98';

@ProviderFor(googleApiGateway)
const googleApiGatewayProvider = GoogleApiGatewayProvider._();

final class GoogleApiGatewayProvider
    extends
        $FunctionalProvider<
          GoogleApiGateway,
          GoogleApiGateway,
          GoogleApiGateway
        >
    with $Provider<GoogleApiGateway> {
  const GoogleApiGatewayProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'googleApiGatewayProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$googleApiGatewayHash();

  @$internal
  @override
  $ProviderElement<GoogleApiGateway> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GoogleApiGateway create(Ref ref) {
    return googleApiGateway(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoogleApiGateway value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoogleApiGateway>(value),
    );
  }
}

String _$googleApiGatewayHash() => r'd5812df08eb7e541ad4665c6f2dc34b6503d5cc3';

@ProviderFor(checkGoogleApiAvailabilityUseCase)
const checkGoogleApiAvailabilityUseCaseProvider =
    CheckGoogleApiAvailabilityUseCaseProvider._();

final class CheckGoogleApiAvailabilityUseCaseProvider
    extends
        $FunctionalProvider<
          CheckGoogleApiAvailabilityUseCase,
          CheckGoogleApiAvailabilityUseCase,
          CheckGoogleApiAvailabilityUseCase
        >
    with $Provider<CheckGoogleApiAvailabilityUseCase> {
  const CheckGoogleApiAvailabilityUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checkGoogleApiAvailabilityUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$checkGoogleApiAvailabilityUseCaseHash();

  @$internal
  @override
  $ProviderElement<CheckGoogleApiAvailabilityUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CheckGoogleApiAvailabilityUseCase create(Ref ref) {
    return checkGoogleApiAvailabilityUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckGoogleApiAvailabilityUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckGoogleApiAvailabilityUseCase>(
        value,
      ),
    );
  }
}

String _$checkGoogleApiAvailabilityUseCaseHash() =>
    r'434db0592137eb5399c56541fbe1c47eb740f856';
