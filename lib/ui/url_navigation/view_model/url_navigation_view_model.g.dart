// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_navigation_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that fetches the URL navigation list.

@ProviderFor(UrlNavigationViewModel)
const urlNavigationViewModelProvider = UrlNavigationViewModelProvider._();

/// ViewModel that fetches the URL navigation list.
final class UrlNavigationViewModelProvider
    extends $NotifierProvider<UrlNavigationViewModel, UrlNavigationUiState> {
  /// ViewModel that fetches the URL navigation list.
  const UrlNavigationViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'urlNavigationViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$urlNavigationViewModelHash();

  @$internal
  @override
  UrlNavigationViewModel create() => UrlNavigationViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UrlNavigationUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UrlNavigationUiState>(value),
    );
  }
}

String _$urlNavigationViewModelHash() =>
    r'0e8e88772e236d66afb45b9729c72ee3dbbd573b';

/// ViewModel that fetches the URL navigation list.

abstract class _$UrlNavigationViewModel
    extends $Notifier<UrlNavigationUiState> {
  UrlNavigationUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<UrlNavigationUiState, UrlNavigationUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UrlNavigationUiState, UrlNavigationUiState>,
              UrlNavigationUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
