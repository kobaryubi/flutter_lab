// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that manages the app store screen state.

@ProviderFor(AppStoreViewModel)
const appStoreViewModelProvider = AppStoreViewModelProvider._();

/// ViewModel that manages the app store screen state.
final class AppStoreViewModelProvider
    extends $NotifierProvider<AppStoreViewModel, AppStoreUiState> {
  /// ViewModel that manages the app store screen state.
  const AppStoreViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appStoreViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appStoreViewModelHash();

  @$internal
  @override
  AppStoreViewModel create() => AppStoreViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppStoreUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppStoreUiState>(value),
    );
  }
}

String _$appStoreViewModelHash() => r'70b63e10a18d57b9cb3a6b451f6512cb5fa4e61b';

/// ViewModel that manages the app store screen state.

abstract class _$AppStoreViewModel extends $Notifier<AppStoreUiState> {
  AppStoreUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AppStoreUiState, AppStoreUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AppStoreUiState, AppStoreUiState>,
              AppStoreUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
