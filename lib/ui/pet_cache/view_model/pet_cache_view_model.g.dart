// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_cache_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that manages pet list fetching with cache and cache clearing.

@ProviderFor(PetCacheViewModel)
const petCacheViewModelProvider = PetCacheViewModelProvider._();

/// ViewModel that manages pet list fetching with cache and cache clearing.
final class PetCacheViewModelProvider
    extends $NotifierProvider<PetCacheViewModel, PetCacheUiState> {
  /// ViewModel that manages pet list fetching with cache and cache clearing.
  const PetCacheViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'petCacheViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$petCacheViewModelHash();

  @$internal
  @override
  PetCacheViewModel create() => PetCacheViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PetCacheUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PetCacheUiState>(value),
    );
  }
}

String _$petCacheViewModelHash() => r'72a1b25a1b3548abd4f8795f2c6be019443de225';

/// ViewModel that manages pet list fetching with cache and cache clearing.

abstract class _$PetCacheViewModel extends $Notifier<PetCacheUiState> {
  PetCacheUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PetCacheUiState, PetCacheUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PetCacheUiState, PetCacheUiState>,
              PetCacheUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
