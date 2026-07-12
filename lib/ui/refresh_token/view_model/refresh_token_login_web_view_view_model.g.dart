// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_login_web_view_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that saves the access token cookie issued by the login web
/// page.

@ProviderFor(RefreshTokenLoginWebViewViewModel)
const refreshTokenLoginWebViewViewModelProvider =
    RefreshTokenLoginWebViewViewModelProvider._();

/// ViewModel that saves the access token cookie issued by the login web
/// page.
final class RefreshTokenLoginWebViewViewModelProvider
    extends
        $NotifierProvider<
          RefreshTokenLoginWebViewViewModel,
          RefreshTokenLoginWebViewUiState
        > {
  /// ViewModel that saves the access token cookie issued by the login web
  /// page.
  const RefreshTokenLoginWebViewViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'refreshTokenLoginWebViewViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$refreshTokenLoginWebViewViewModelHash();

  @$internal
  @override
  RefreshTokenLoginWebViewViewModel create() =>
      RefreshTokenLoginWebViewViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RefreshTokenLoginWebViewUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RefreshTokenLoginWebViewUiState>(
        value,
      ),
    );
  }
}

String _$refreshTokenLoginWebViewViewModelHash() =>
    r'b0b34229098dcef0f0e824eb9a428312d92513fb';

/// ViewModel that saves the access token cookie issued by the login web
/// page.

abstract class _$RefreshTokenLoginWebViewViewModel
    extends $Notifier<RefreshTokenLoginWebViewUiState> {
  RefreshTokenLoginWebViewUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              RefreshTokenLoginWebViewUiState,
              RefreshTokenLoginWebViewUiState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                RefreshTokenLoginWebViewUiState,
                RefreshTokenLoginWebViewUiState
              >,
              RefreshTokenLoginWebViewUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
