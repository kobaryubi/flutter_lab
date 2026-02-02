// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
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
