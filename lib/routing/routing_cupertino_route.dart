part of 'router.dart';

@TypedGoRoute<RoutingCupertinoRoute>(
  path: Routes.routingCupertino,
  name: 'routing_cupertino',
)
@immutable
class RoutingCupertinoRoute extends GoRouteData with $RoutingCupertinoRoute {
  @override
  CupertinoPage<void> buildPage(
    BuildContext context,
    GoRouterState state,
  ) => const CupertinoPage(
    child: RoutingCupertinoScreen(),
  );
}
