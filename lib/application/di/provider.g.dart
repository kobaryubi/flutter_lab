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

String _$petRepositoryHash() => r'94f470db974f59901abf6bc501364a3b4fdde52e';

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
    r'25e9486d167a99c3851da2909fd4cb1d70042b24';

@ProviderFor(batteryRepository)
const batteryRepositoryProvider = BatteryRepositoryProvider._();

final class BatteryRepositoryProvider
    extends
        $FunctionalProvider<
          BatteryRepository,
          BatteryRepository,
          BatteryRepository
        >
    with $Provider<BatteryRepository> {
  const BatteryRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'batteryRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$batteryRepositoryHash();

  @$internal
  @override
  $ProviderElement<BatteryRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  BatteryRepository create(Ref ref) {
    return batteryRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BatteryRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BatteryRepository>(value),
    );
  }
}

String _$batteryRepositoryHash() => r'a0c5fdca34fa0de5278b57c8640d108dd163cc13';

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
    r'9533be4ae8a2dfc74c6b105d55cc21ad553be2f6';

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
    r'ff3d722c3d22209355ab8b5865a9c6d116a6b305';

@ProviderFor(listPetsUseCase)
const listPetsUseCaseProvider = ListPetsUseCaseProvider._();

final class ListPetsUseCaseProvider
    extends
        $FunctionalProvider<ListPetsUseCase, ListPetsUseCase, ListPetsUseCase>
    with $Provider<ListPetsUseCase> {
  const ListPetsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'listPetsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$listPetsUseCaseHash();

  @$internal
  @override
  $ProviderElement<ListPetsUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ListPetsUseCase create(Ref ref) {
    return listPetsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ListPetsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ListPetsUseCase>(value),
    );
  }
}

String _$listPetsUseCaseHash() => r'e21a2d4ad0c4f1a75b234748472c84959659c703';

@ProviderFor(createPetUseCase)
const createPetUseCaseProvider = CreatePetUseCaseProvider._();

final class CreatePetUseCaseProvider
    extends
        $FunctionalProvider<
          CreatePetUseCase,
          CreatePetUseCase,
          CreatePetUseCase
        >
    with $Provider<CreatePetUseCase> {
  const CreatePetUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createPetUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createPetUseCaseHash();

  @$internal
  @override
  $ProviderElement<CreatePetUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CreatePetUseCase create(Ref ref) {
    return createPetUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreatePetUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreatePetUseCase>(value),
    );
  }
}

String _$createPetUseCaseHash() => r'aad94a395f0d8f780d7a19578c3346c771ef6ba0';

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
    r'f87973883bed086591df7a5a02dd45bb75d0bda6';

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
    r'05e887bc85127af92d1c449c66e8909cea753690';
