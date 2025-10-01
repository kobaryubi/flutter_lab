// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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

String _$petRepositoryHash() => r'223a87f1f958af890ab235324f25d39a6076a5af';

/// use case
@ProviderFor(listPetsUseCaseProvider)
const listPetsUseCaseProviderProvider = ListPetsUseCaseProviderProvider._();

/// use case
final class ListPetsUseCaseProviderProvider
    extends
        $FunctionalProvider<ListPetsUseCase, ListPetsUseCase, ListPetsUseCase>
    with $Provider<ListPetsUseCase> {
  /// use case
  const ListPetsUseCaseProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'listPetsUseCaseProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$listPetsUseCaseProviderHash();

  @$internal
  @override
  $ProviderElement<ListPetsUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ListPetsUseCase create(Ref ref) {
    return listPetsUseCaseProvider(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ListPetsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ListPetsUseCase>(value),
    );
  }
}

String _$listPetsUseCaseProviderHash() =>
    r'61927af89128dd721830dc580ca380b6e6612ff0';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
