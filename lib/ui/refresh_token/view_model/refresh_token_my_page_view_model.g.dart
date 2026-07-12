// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_my_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that fetches the signed-in user's profile and refreshes the
/// session when the access token has expired.

@ProviderFor(RefreshTokenMyPageViewModel)
const refreshTokenMyPageViewModelProvider =
    RefreshTokenMyPageViewModelProvider._();

/// ViewModel that fetches the signed-in user's profile and refreshes the
/// session when the access token has expired.
final class RefreshTokenMyPageViewModelProvider
    extends
        $NotifierProvider<
          RefreshTokenMyPageViewModel,
          RefreshTokenMyPageUiState
        > {
  /// ViewModel that fetches the signed-in user's profile and refreshes the
  /// session when the access token has expired.
  const RefreshTokenMyPageViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'refreshTokenMyPageViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$refreshTokenMyPageViewModelHash();

  @$internal
  @override
  RefreshTokenMyPageViewModel create() => RefreshTokenMyPageViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RefreshTokenMyPageUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RefreshTokenMyPageUiState>(value),
    );
  }
}

String _$refreshTokenMyPageViewModelHash() =>
    r'54043ce0fa4d9486cc46365a8b6e7c7fc0ad77cc';

/// ViewModel that fetches the signed-in user's profile and refreshes the
/// session when the access token has expired.

abstract class _$RefreshTokenMyPageViewModel
    extends $Notifier<RefreshTokenMyPageUiState> {
  RefreshTokenMyPageUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<RefreshTokenMyPageUiState, RefreshTokenMyPageUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RefreshTokenMyPageUiState, RefreshTokenMyPageUiState>,
              RefreshTokenMyPageUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
