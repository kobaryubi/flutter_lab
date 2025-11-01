part of 'router.dart';

@TypedGoRoute<RoutingSlideRoute>(path: Routes.routingSlide)
@immutable
class RoutingSlideRoute extends GoRouteData with $RoutingSlideRoute {
  @override
  CustomTransitionPage<void> buildPage(
    BuildContext context,
    GoRouterState state,
  ) {
    return CustomTransitionPage(
      child: const RoutingSlideScreen(),
      transitionsBuilder:
          (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return child;
          },
    );
  }
}
