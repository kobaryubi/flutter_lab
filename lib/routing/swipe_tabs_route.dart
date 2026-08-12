part of 'router.dart';

@TypedGoRoute<SwipeTabsRoute>(path: Routes.swipeTabs, name: 'swipeTabs')
@immutable
class SwipeTabsRoute extends GoRouteData with $SwipeTabsRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SwipeTabsScreen();
}
