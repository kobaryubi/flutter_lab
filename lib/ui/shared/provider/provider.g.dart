// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provides [DetermineNavigationDestinationUseCase] with its dependencies.

@ProviderFor(determineNavigationDestinationUseCase)
const determineNavigationDestinationUseCaseProvider =
    DetermineNavigationDestinationUseCaseProvider._();

/// Provides [DetermineNavigationDestinationUseCase] with its dependencies.

final class DetermineNavigationDestinationUseCaseProvider
    extends
        $FunctionalProvider<
          DetermineNavigationDestinationUseCase,
          DetermineNavigationDestinationUseCase,
          DetermineNavigationDestinationUseCase
        >
    with $Provider<DetermineNavigationDestinationUseCase> {
  /// Provides [DetermineNavigationDestinationUseCase] with its dependencies.
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
    r'e8887bad56cc6814c81ec89c276ad3442183a400';
