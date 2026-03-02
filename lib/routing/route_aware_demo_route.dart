part of 'router.dart';

@TypedGoRoute<RouteAwareDemoRoute>(path: Routes.routeAwareDemo)
@immutable
class RouteAwareDemoRoute extends GoRouteData with $RouteAwareDemoRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RouteAwareDemoScreen();
}

@TypedGoRoute<RouteAwareDemoDetailRoute>(path: Routes.routeAwareDemoDetail)
@immutable
class RouteAwareDemoDetailRoute extends GoRouteData
    with $RouteAwareDemoDetailRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RouteAwareDemoDetailScreen();
}
