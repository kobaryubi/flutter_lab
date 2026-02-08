// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_paths_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that loads local directory paths from path_provider.

@ProviderFor(LocalPathsViewModel)
const localPathsViewModelProvider = LocalPathsViewModelProvider._();

/// ViewModel that loads local directory paths from path_provider.
final class LocalPathsViewModelProvider
    extends $NotifierProvider<LocalPathsViewModel, LocalPathsUiState> {
  /// ViewModel that loads local directory paths from path_provider.
  const LocalPathsViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'localPathsViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$localPathsViewModelHash();

  @$internal
  @override
  LocalPathsViewModel create() => LocalPathsViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocalPathsUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocalPathsUiState>(value),
    );
  }
}

String _$localPathsViewModelHash() =>
    r'25054765f8cfe954d1a1d1bae75d18e30d7c804b';

/// ViewModel that loads local directory paths from path_provider.

abstract class _$LocalPathsViewModel extends $Notifier<LocalPathsUiState> {
  LocalPathsUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LocalPathsUiState, LocalPathsUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LocalPathsUiState, LocalPathsUiState>,
              LocalPathsUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
