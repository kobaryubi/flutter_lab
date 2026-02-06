part of 'router.dart';

@TypedGoRoute<NetworkRoute>(
  path: Routes.network,
)
@immutable
class NetworkRoute extends GoRouteData with $NetworkRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const NetworkScreen();
}
