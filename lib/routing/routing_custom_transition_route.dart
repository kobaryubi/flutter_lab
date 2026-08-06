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
    opaque: false,
    transitionDuration: Duration.zero,
    transitionsBuilder: buildSlideTransition,
    child: const RoutingCustomTransitionScreen(),
  );
}

/// Slides the page vertically along the route animation.
///
/// The forward duration is zero, so this is only visible on pop, where the
/// reversed animation slides the page down. The slide-up on open is driven
/// inside the screen after the initial fetch completes.
Widget buildSlideTransition(
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
