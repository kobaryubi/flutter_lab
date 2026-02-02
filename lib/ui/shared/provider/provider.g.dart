// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provides [DetermineNavigationDestinationUseCase].

@ProviderFor(determineNavigationDestinationUseCase)
const determineNavigationDestinationUseCaseProvider =
    DetermineNavigationDestinationUseCaseProvider._();

/// Provides [DetermineNavigationDestinationUseCase].

final class DetermineNavigationDestinationUseCaseProvider
    extends
        $FunctionalProvider<
          DetermineNavigationDestinationUseCase,
          DetermineNavigationDestinationUseCase,
          DetermineNavigationDestinationUseCase
        >
    with $Provider<DetermineNavigationDestinationUseCase> {
  /// Provides [DetermineNavigationDestinationUseCase].
  const DetermineNavigationDestinationUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'determineNavigationDestinationUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$determineNavigationDestinationUseCaseHash();

  @$internal
  @override
  $ProviderElement<DetermineNavigationDestinationUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DetermineNavigationDestinationUseCase create(Ref ref) {
    return determineNavigationDestinationUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DetermineNavigationDestinationUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<DetermineNavigationDestinationUseCase>(value),
    );
  }
}

String _$determineNavigationDestinationUseCaseHash() =>
    r'd5d2357f5f59f89ac3e6bd2dc558f8dd1a39e634';

/// Provides [GetUrlNavigationListUseCase] with its dependencies.

@ProviderFor(getUrlNavigationListUseCase)
const getUrlNavigationListUseCaseProvider =
    GetUrlNavigationListUseCaseProvider._();

/// Provides [GetUrlNavigationListUseCase] with its dependencies.

final class GetUrlNavigationListUseCaseProvider
    extends
        $FunctionalProvider<
          GetUrlNavigationListUseCase,
          GetUrlNavigationListUseCase,
          GetUrlNavigationListUseCase
        >
    with $Provider<GetUrlNavigationListUseCase> {
  /// Provides [GetUrlNavigationListUseCase] with its dependencies.
  const GetUrlNavigationListUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getUrlNavigationListUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getUrlNavigationListUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetUrlNavigationListUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetUrlNavigationListUseCase create(Ref ref) {
    return getUrlNavigationListUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetUrlNavigationListUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetUrlNavigationListUseCase>(value),
    );
  }
}

String _$getUrlNavigationListUseCaseHash() =>
    r'76a6fdc358ee889c1b7c91422a398d8bdf5bdce6';
