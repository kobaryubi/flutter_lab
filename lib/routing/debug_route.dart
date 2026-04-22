part of 'router.dart';

@TypedGoRoute<DebugRoute>(path: Routes.debug, name: 'debug')
@immutable
class DebugRoute extends GoRouteData with $DebugRoute {
  const DebugRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DebugScreen();
}
