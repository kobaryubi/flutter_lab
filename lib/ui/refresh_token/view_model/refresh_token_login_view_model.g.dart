// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_login_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that starts the login flow of the refresh token sample.

@ProviderFor(RefreshTokenLoginViewModel)
const refreshTokenLoginViewModelProvider =
    RefreshTokenLoginViewModelProvider._();

/// ViewModel that starts the login flow of the refresh token sample.
final class RefreshTokenLoginViewModelProvider
    extends
        $NotifierProvider<
          RefreshTokenLoginViewModel,
          RefreshTokenLoginUiState
        > {
  /// ViewModel that starts the login flow of the refresh token sample.
  const RefreshTokenLoginViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'refreshTokenLoginViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$refreshTokenLoginViewModelHash();

  @$internal
  @override
  RefreshTokenLoginViewModel create() => RefreshTokenLoginViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RefreshTokenLoginUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RefreshTokenLoginUiState>(value),
    );
  }
}

String _$refreshTokenLoginViewModelHash() =>
    r'330a36c74a94a02d3907f9a62b5dd53521d6e322';

/// ViewModel that starts the login flow of the refresh token sample.

abstract class _$RefreshTokenLoginViewModel
    extends $Notifier<RefreshTokenLoginUiState> {
  RefreshTokenLoginUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<RefreshTokenLoginUiState, RefreshTokenLoginUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RefreshTokenLoginUiState, RefreshTokenLoginUiState>,
              RefreshTokenLoginUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
