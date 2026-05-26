part of 'router.dart';

@immutable
class ObserverDemoRoute extends GoRouteData with $ObserverDemoRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ObserverDemoScreen();
}

@immutable
class ObserverDemoDetailRoute extends GoRouteData
    with $ObserverDemoDetailRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ObserverDemoDetailScreen();
}
