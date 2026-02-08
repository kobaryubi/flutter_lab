// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that simulates a data fetch with a delay.

@ProviderFor(LoadingViewModel)
const loadingViewModelProvider = LoadingViewModelProvider._();

/// ViewModel that simulates a data fetch with a delay.
final class LoadingViewModelProvider
    extends $NotifierProvider<LoadingViewModel, LoadingUiState> {
  /// ViewModel that simulates a data fetch with a delay.
  const LoadingViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loadingViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loadingViewModelHash();

  @$internal
  @override
  LoadingViewModel create() => LoadingViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoadingUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoadingUiState>(value),
    );
  }
}

String _$loadingViewModelHash() => r'b232e4521c7f89b9371acee71f7f0880ea1a1e98';

/// ViewModel that simulates a data fetch with a delay.

abstract class _$LoadingViewModel extends $Notifier<LoadingUiState> {
  LoadingUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LoadingUiState, LoadingUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LoadingUiState, LoadingUiState>,
              LoadingUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
