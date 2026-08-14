// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swipe_tabs_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that simulates fetching the item list of the selected tab.

@ProviderFor(SwipeTabsViewModel)
const swipeTabsViewModelProvider = SwipeTabsViewModelProvider._();

/// ViewModel that simulates fetching the item list of the selected tab.
final class SwipeTabsViewModelProvider
    extends $NotifierProvider<SwipeTabsViewModel, SwipeTabsUiState> {
  /// ViewModel that simulates fetching the item list of the selected tab.
  const SwipeTabsViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'swipeTabsViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$swipeTabsViewModelHash();

  @$internal
  @override
  SwipeTabsViewModel create() => SwipeTabsViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SwipeTabsUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SwipeTabsUiState>(value),
    );
  }
}

String _$swipeTabsViewModelHash() =>
    r'8cc148bef13b25bca318fd2d2219bf8979da8841';

/// ViewModel that simulates fetching the item list of the selected tab.

abstract class _$SwipeTabsViewModel extends $Notifier<SwipeTabsUiState> {
  SwipeTabsUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SwipeTabsUiState, SwipeTabsUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SwipeTabsUiState, SwipeTabsUiState>,
              SwipeTabsUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
