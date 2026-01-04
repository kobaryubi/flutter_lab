// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_preferences_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// View model for shared preferences screen.

@ProviderFor(SharedPreferencesViewModel)
const sharedPreferencesViewModelProvider =
    SharedPreferencesViewModelProvider._();

/// View model for shared preferences screen.
final class SharedPreferencesViewModelProvider
    extends
        $NotifierProvider<
          SharedPreferencesViewModel,
          SharedPreferencesUiState
        > {
  /// View model for shared preferences screen.
  const SharedPreferencesViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sharedPreferencesViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sharedPreferencesViewModelHash();

  @$internal
  @override
  SharedPreferencesViewModel create() => SharedPreferencesViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SharedPreferencesUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SharedPreferencesUiState>(value),
    );
  }
}

String _$sharedPreferencesViewModelHash() =>
    r'387e4d440da1bfebb7cc847e2dd97bc555d3282b';

/// View model for shared preferences screen.

abstract class _$SharedPreferencesViewModel
    extends $Notifier<SharedPreferencesUiState> {
  SharedPreferencesUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<SharedPreferencesUiState, SharedPreferencesUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SharedPreferencesUiState, SharedPreferencesUiState>,
              SharedPreferencesUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
