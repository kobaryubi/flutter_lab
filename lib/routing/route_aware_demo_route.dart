part of 'router.dart';

@TypedGoRoute<RouteAwareDemoRoute>(
  path: Routes.routeAwareDemo,
  name: 'route_aware_demo',
)
@immutable
class RouteAwareDemoRoute extends GoRouteData with $RouteAwareDemoRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RouteAwareDemoScreen();
}

@TypedGoRoute<RouteAwareDemoDetailRoute>(
  path: Routes.routeAwareDemoDetail,
  name: 'route_aware_demo_detail',
)
@immutable
class RouteAwareDemoDetailRoute extends GoRouteData
    with $RouteAwareDemoDetailRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RouteAwareDemoDetailScreen();
}
