part of 'router.dart';

@TypedGoRoute<RoutingCupertinoRoute>(path: Routes.routingSlide)
@immutable
class RoutingCupertinoRoute extends GoRouteData with $RoutingCupertinoRoute {
  @override
  CupertinoPage<void> buildPage(
    BuildContext context,
    GoRouterState state,
  ) {
    return const CupertinoPage(
      child: RoutingSlideScreen(),
    );
  }
}
