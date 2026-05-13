part of 'router.dart';

@TypedGoRoute<CurrentRouteStateRoute>(
  path: Routes.currentRouteState,
  name: 'current_route_state',
)
@immutable
class CurrentRouteStateRoute extends GoRouteData with $CurrentRouteStateRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CurrentRouteStateScreen();
}
