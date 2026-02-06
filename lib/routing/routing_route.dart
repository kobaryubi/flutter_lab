part of 'router.dart';

@TypedGoRoute<RoutingRoute>(path: Routes.routing)
@immutable
class RoutingRoute extends GoRouteData with $RoutingRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RoutingScreen();
}
