// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'petstore_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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

String _$petStoreViewModelHash() => r'5691fa0a0023a010d750c817290da6c3e642866e';

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

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
