// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_observer.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Route observer shared by the router and the `useRouteAware` hook.

@ProviderFor(routeObserver)
const routeObserverProvider = RouteObserverProvider._();

/// Route observer shared by the router and the `useRouteAware` hook.

final class RouteObserverProvider
    extends
        $FunctionalProvider<
          RouteObserver<ModalRoute<void>>,
          RouteObserver<ModalRoute<void>>,
          RouteObserver<ModalRoute<void>>
        >
    with $Provider<RouteObserver<ModalRoute<void>>> {
  /// Route observer shared by the router and the `useRouteAware` hook.
  const RouteObserverProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'routeObserverProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$routeObserverHash();

  @$internal
  @override
  $ProviderElement<RouteObserver<ModalRoute<void>>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RouteObserver<ModalRoute<void>> create(Ref ref) {
    return routeObserver(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RouteObserver<ModalRoute<void>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RouteObserver<ModalRoute<void>>>(
        value,
      ),
    );
  }
}

String _$routeObserverHash() => r'8a140576712c4c055d4a3133b12a4701081de63b';
