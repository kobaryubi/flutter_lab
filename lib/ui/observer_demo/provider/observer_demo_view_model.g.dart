// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observer_demo_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that holds a list of observer event logs.
///
/// Observer callbacks append formatted event strings here,
/// and the UI rebuilds to display them in real-time.

@ProviderFor(ObserverDemoViewModel)
const observerDemoViewModelProvider = ObserverDemoViewModelProvider._();

/// ViewModel that holds a list of observer event logs.
///
/// Observer callbacks append formatted event strings here,
/// and the UI rebuilds to display them in real-time.
final class ObserverDemoViewModelProvider
    extends $NotifierProvider<ObserverDemoViewModel, List<String>> {
  /// ViewModel that holds a list of observer event logs.
  ///
  /// Observer callbacks append formatted event strings here,
  /// and the UI rebuilds to display them in real-time.
  const ObserverDemoViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'observerDemoViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$observerDemoViewModelHash();

  @$internal
  @override
  ObserverDemoViewModel create() => ObserverDemoViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<String>>(value),
    );
  }
}

String _$observerDemoViewModelHash() =>
    r'abf1fba912f11bae788be873f83770c9fda6fbf6';

/// ViewModel that holds a list of observer event logs.
///
/// Observer callbacks append formatted event strings here,
/// and the UI rebuilds to display them in real-time.

abstract class _$ObserverDemoViewModel extends $Notifier<List<String>> {
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
