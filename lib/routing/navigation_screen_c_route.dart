part of 'router.dart';

@TypedGoRoute<NavigationScreenCRoute>(
  path: Routes.navigationScreenC,
  name: 'navigation_screen_c',
)
@immutable
class NavigationScreenCRoute extends GoRouteData with $NavigationScreenCRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const NavigationScreenC();
}
