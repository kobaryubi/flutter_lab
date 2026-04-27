// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading_submit_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that simulates both a data fetch and a form submission.

@ProviderFor(LoadingSubmitViewModel)
const loadingSubmitViewModelProvider = LoadingSubmitViewModelProvider._();

/// ViewModel that simulates both a data fetch and a form submission.
final class LoadingSubmitViewModelProvider
    extends $NotifierProvider<LoadingSubmitViewModel, LoadingSubmitUiState> {
  /// ViewModel that simulates both a data fetch and a form submission.
  const LoadingSubmitViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loadingSubmitViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loadingSubmitViewModelHash();

  @$internal
  @override
  LoadingSubmitViewModel create() => LoadingSubmitViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoadingSubmitUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoadingSubmitUiState>(value),
    );
  }
}

String _$loadingSubmitViewModelHash() =>
    r'36b1f484569a3f1bce26b40f2181d3860aeaac01';

/// ViewModel that simulates both a data fetch and a form submission.

abstract class _$LoadingSubmitViewModel
    extends $Notifier<LoadingSubmitUiState> {
  LoadingSubmitUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LoadingSubmitUiState, LoadingSubmitUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LoadingSubmitUiState, LoadingSubmitUiState>,
              LoadingSubmitUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
