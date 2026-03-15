part of 'router.dart';

@TypedGoRoute<RoutingRoute>(path: Routes.routing, name: 'routing')
@immutable
class RoutingRoute extends GoRouteData with $RoutingRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RoutingScreen();
}
