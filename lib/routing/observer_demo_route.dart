part of 'router.dart';

@TypedGoRoute<ObserverDemoRoute>(
  path: Routes.observerDemo,
  name: 'observer_demo',
)
@immutable
class ObserverDemoRoute extends GoRouteData with $ObserverDemoRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ObserverDemoScreen();
}

@TypedGoRoute<ObserverDemoDetailRoute>(
  path: Routes.observerDemoDetail,
  name: 'observer_demo_detail',
)
@immutable
class ObserverDemoDetailRoute extends GoRouteData
    with $ObserverDemoDetailRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ObserverDemoDetailScreen();
}
