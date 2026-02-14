part of 'router.dart';

@TypedGoRoute<NavigationScreenARoute>(path: Routes.navigationScreenA)
@immutable
class NavigationScreenARoute extends GoRouteData with $NavigationScreenARoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const NavigationScreenA();
}
