// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adfurikun_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the Adfurikun ads demo screen.
///
/// Provides methods to initialize, load, and show
/// both interstitial and reward ads.

@ProviderFor(AdfurikunViewModel)
const adfurikunViewModelProvider = AdfurikunViewModelProvider._();

/// ViewModel for the Adfurikun ads demo screen.
///
/// Provides methods to initialize, load, and show
/// both interstitial and reward ads.
final class AdfurikunViewModelProvider
    extends $NotifierProvider<AdfurikunViewModel, AdfurikunUiState> {
  /// ViewModel for the Adfurikun ads demo screen.
  ///
  /// Provides methods to initialize, load, and show
  /// both interstitial and reward ads.
  const AdfurikunViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adfurikunViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adfurikunViewModelHash();

  @$internal
  @override
  AdfurikunViewModel create() => AdfurikunViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdfurikunUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdfurikunUiState>(value),
    );
  }
}

String _$adfurikunViewModelHash() =>
    r'32473add6743b431774c43906f515f0a18c3917e';

/// ViewModel for the Adfurikun ads demo screen.
///
/// Provides methods to initialize, load, and show
/// both interstitial and reward ads.

abstract class _$AdfurikunViewModel extends $Notifier<AdfurikunUiState> {
  AdfurikunUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AdfurikunUiState, AdfurikunUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AdfurikunUiState, AdfurikunUiState>,
              AdfurikunUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
