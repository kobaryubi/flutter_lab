import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'route_observer.g.dart';

/// Route observer shared by the router and the `useRouteAware` hook.
@Riverpod(keepAlive: true)
RouteObserver<ModalRoute<void>> routeObserver(Ref ref) =>
    RouteObserver<ModalRoute<void>>();
