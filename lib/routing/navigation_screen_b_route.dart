part of 'router.dart';

@TypedGoRoute<NavigationScreenBRoute>(path: Routes.navigationScreenB)
@immutable
class NavigationScreenBRoute extends GoRouteData with $NavigationScreenBRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const NavigationScreenB();
}
