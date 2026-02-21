// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_api_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the Google API availability screen.

@ProviderFor(GoogleApiViewModel)
const googleApiViewModelProvider = GoogleApiViewModelProvider._();

/// ViewModel for the Google API availability screen.
final class GoogleApiViewModelProvider
    extends $NotifierProvider<GoogleApiViewModel, GoogleApiUiState> {
  /// ViewModel for the Google API availability screen.
  const GoogleApiViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'googleApiViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$googleApiViewModelHash();

  @$internal
  @override
  GoogleApiViewModel create() => GoogleApiViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoogleApiUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoogleApiUiState>(value),
    );
  }
}

String _$googleApiViewModelHash() =>
    r'f3855325d4399a29169d011cd2c81c9697201f66';

/// ViewModel for the Google API availability screen.

abstract class _$GoogleApiViewModel extends $Notifier<GoogleApiUiState> {
  GoogleApiUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<GoogleApiUiState, GoogleApiUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<GoogleApiUiState, GoogleApiUiState>,
              GoogleApiUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
