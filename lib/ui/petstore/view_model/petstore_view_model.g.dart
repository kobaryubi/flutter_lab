// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'petstore_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PetStoreViewModel)
const petStoreViewModelProvider = PetStoreViewModelProvider._();

final class PetStoreViewModelProvider
    extends $NotifierProvider<PetStoreViewModel, PetStoreUiState> {
  const PetStoreViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'petStoreViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$petStoreViewModelHash();

  @$internal
  @override
  PetStoreViewModel create() => PetStoreViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PetStoreUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PetStoreUiState>(value),
    );
  }
}

String _$petStoreViewModelHash() => r'6ee1693568994881ecf9859b1d273a45b2a70eca';

abstract class _$PetStoreViewModel extends $Notifier<PetStoreUiState> {
  PetStoreUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PetStoreUiState, PetStoreUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PetStoreUiState, PetStoreUiState>,
              PetStoreUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
