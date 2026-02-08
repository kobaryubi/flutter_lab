// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flutter_lab_app_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that manages app-level token refresh registration.

@ProviderFor(FlutterLabAppViewModel)
const flutterLabAppViewModelProvider = FlutterLabAppViewModelProvider._();

/// ViewModel that manages app-level token refresh registration.
final class FlutterLabAppViewModelProvider
    extends $NotifierProvider<FlutterLabAppViewModel, FlutterLabAppUiState> {
  /// ViewModel that manages app-level token refresh registration.
  const FlutterLabAppViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'flutterLabAppViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$flutterLabAppViewModelHash();

  @$internal
  @override
  FlutterLabAppViewModel create() => FlutterLabAppViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FlutterLabAppUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FlutterLabAppUiState>(value),
    );
  }
}

String _$flutterLabAppViewModelHash() =>
    r'd40615875a114675cc50821040face40342474df';

/// ViewModel that manages app-level token refresh registration.

abstract class _$FlutterLabAppViewModel
    extends $Notifier<FlutterLabAppUiState> {
  FlutterLabAppUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<FlutterLabAppUiState, FlutterLabAppUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FlutterLabAppUiState, FlutterLabAppUiState>,
              FlutterLabAppUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
