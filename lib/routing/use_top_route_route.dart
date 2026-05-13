part of 'router.dart';

@TypedGoRoute<UseTopRouteRoute>(
  path: Routes.useTopRoute,
  name: 'use_top_route',
)
@immutable
class UseTopRouteRoute extends GoRouteData with $UseTopRouteRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const UseTopRouteScreen();
}
