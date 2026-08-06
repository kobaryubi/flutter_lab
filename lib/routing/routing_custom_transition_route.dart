part of 'router.dart';

@TypedGoRoute<RoutingCustomTransitionRoute>(
  path: Routes.routingCustomTransition,
  name: 'routing_custom_transition',
)
@immutable
class RoutingCustomTransitionRoute extends GoRouteData
    with $RoutingCustomTransitionRoute {
  @override
  CustomTransitionPage<void> buildPage(
    BuildContext context,
    GoRouterState state,
  ) => CustomTransitionPage(
    key: state.pageKey,
    transitionsBuilder: buildSlideUpTransition,
    child: const RoutingCustomTransitionScreen(),
  );
}

/// Slides the page up from the bottom on push; the reversed animation on pop
/// slides it back down.
Widget buildSlideUpTransition(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) => SlideTransition(
  position: animation.drive(
    Tween(begin: const Offset(0, 1), end: Offset.zero),
  ),
  child: child,
);
