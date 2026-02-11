// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connectivity_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Manages the global network connectivity status.
///
/// Subscribes to connectivity changes and keeps the state updated
/// across the entire app lifecycle.

@ProviderFor(ConnectivityNotifier)
const connectivityProvider = ConnectivityNotifierProvider._();

/// Manages the global network connectivity status.
///
/// Subscribes to connectivity changes and keeps the state updated
/// across the entire app lifecycle.
final class ConnectivityNotifierProvider
    extends $NotifierProvider<ConnectivityNotifier, ConnectivityStatus> {
  /// Manages the global network connectivity status.
  ///
  /// Subscribes to connectivity changes and keeps the state updated
  /// across the entire app lifecycle.
  const ConnectivityNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'connectivityProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$connectivityNotifierHash();

  @$internal
  @override
  ConnectivityNotifier create() => ConnectivityNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConnectivityStatus value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConnectivityStatus>(value),
    );
  }
}

String _$connectivityNotifierHash() =>
    r'765aecde8c5175450ee9ebb9aa185fabb77c3cdf';

/// Manages the global network connectivity status.
///
/// Subscribes to connectivity changes and keeps the state updated
/// across the entire app lifecycle.

abstract class _$ConnectivityNotifier extends $Notifier<ConnectivityStatus> {
  ConnectivityStatus build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ConnectivityStatus, ConnectivityStatus>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ConnectivityStatus, ConnectivityStatus>,
              ConnectivityStatus,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
