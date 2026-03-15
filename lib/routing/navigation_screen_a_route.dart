part of 'router.dart';

@TypedGoRoute<NavigationScreenARoute>(
  path: Routes.navigationScreenA,
  name: 'navigation_screen_a',
)
@immutable
class NavigationScreenARoute extends GoRouteData with $NavigationScreenARoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const NavigationScreenA();
}
