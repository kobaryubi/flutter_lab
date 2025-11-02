// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(LocationViewModel)
const locationViewModelProvider = LocationViewModelProvider._();

final class LocationViewModelProvider
    extends $NotifierProvider<LocationViewModel, LocationUiState> {
  const LocationViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationViewModelHash();

  @$internal
  @override
  LocationViewModel create() => LocationViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocationUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocationUiState>(value),
    );
  }
}

String _$locationViewModelHash() => r'5af73fb52287c1918e00b4a4b1af8fa8d82f3d76';

abstract class _$LocationViewModel extends $Notifier<LocationUiState> {
  LocationUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LocationUiState, LocationUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LocationUiState, LocationUiState>,
              LocationUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
