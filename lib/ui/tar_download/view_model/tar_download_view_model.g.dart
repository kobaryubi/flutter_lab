// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tar_download_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the tar-download sample screen.
///
/// Downloads `sample.tar` from the local nginx asset server and writes it
/// to the app documents directory, exposing the resulting path and size
/// through [TarDownloadUiState.result].

@ProviderFor(TarDownloadViewModel)
const tarDownloadViewModelProvider = TarDownloadViewModelProvider._();

/// ViewModel for the tar-download sample screen.
///
/// Downloads `sample.tar` from the local nginx asset server and writes it
/// to the app documents directory, exposing the resulting path and size
/// through [TarDownloadUiState.result].
final class TarDownloadViewModelProvider
    extends $NotifierProvider<TarDownloadViewModel, TarDownloadUiState> {
  /// ViewModel for the tar-download sample screen.
  ///
  /// Downloads `sample.tar` from the local nginx asset server and writes it
  /// to the app documents directory, exposing the resulting path and size
  /// through [TarDownloadUiState.result].
  const TarDownloadViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tarDownloadViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tarDownloadViewModelHash();

  @$internal
  @override
  TarDownloadViewModel create() => TarDownloadViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TarDownloadUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TarDownloadUiState>(value),
    );
  }
}

String _$tarDownloadViewModelHash() =>
    r'e5edee6aba10e887cb01a60c8edb9ff3db9e90e0';

/// ViewModel for the tar-download sample screen.
///
/// Downloads `sample.tar` from the local nginx asset server and writes it
/// to the app documents directory, exposing the resulting path and size
/// through [TarDownloadUiState.result].

abstract class _$TarDownloadViewModel extends $Notifier<TarDownloadUiState> {
  TarDownloadUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<TarDownloadUiState, TarDownloadUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TarDownloadUiState, TarDownloadUiState>,
              TarDownloadUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
