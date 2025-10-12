// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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

String _$dioHash() => r'0c2bde79fee4386c4d0f928c82ea4a53050319e9';

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

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
