// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_aware_demo_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that holds a list of route-aware event logs.
///
/// Hook callbacks append formatted event strings here,
/// and the UI rebuilds to display them in real-time.

@ProviderFor(RouteAwareDemoViewModel)
const routeAwareDemoViewModelProvider = RouteAwareDemoViewModelProvider._();

/// ViewModel that holds a list of route-aware event logs.
///
/// Hook callbacks append formatted event strings here,
/// and the UI rebuilds to display them in real-time.
final class RouteAwareDemoViewModelProvider
    extends $NotifierProvider<RouteAwareDemoViewModel, List<String>> {
  /// ViewModel that holds a list of route-aware event logs.
  ///
  /// Hook callbacks append formatted event strings here,
  /// and the UI rebuilds to display them in real-time.
  const RouteAwareDemoViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'routeAwareDemoViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$routeAwareDemoViewModelHash();

  @$internal
  @override
  RouteAwareDemoViewModel create() => RouteAwareDemoViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<String>>(value),
    );
  }
}

String _$routeAwareDemoViewModelHash() =>
    r'ad4e9fc61b7c5d383ac09ce665d89340b160cfa3';

/// ViewModel that holds a list of route-aware event logs.
///
/// Hook callbacks append formatted event strings here,
/// and the UI rebuilds to display them in real-time.

abstract class _$RouteAwareDemoViewModel extends $Notifier<List<String>> {
  List<String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<String>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<String>, List<String>>,
              List<String>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
