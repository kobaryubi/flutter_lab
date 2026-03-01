part of 'router.dart';

@TypedGoRoute<ObserverDemoRoute>(path: Routes.observerDemo)
@immutable
class ObserverDemoRoute extends GoRouteData with $ObserverDemoRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ObserverDemoScreen();
}

@TypedGoRoute<ObserverDemoDetailRoute>(path: Routes.observerDemoDetail)
@immutable
class ObserverDemoDetailRoute extends GoRouteData
    with $ObserverDemoDetailRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ObserverDemoDetailScreen();
}
