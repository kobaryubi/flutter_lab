part of 'router.dart';

@TypedGoRoute<MultiTapGuardRoute>(
  path: Routes.multiTapGuard,
  name: 'multi_tap_guard',
)
@immutable
class MultiTapGuardRoute extends GoRouteData with $MultiTapGuardRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const MultiTapGuardScreen();
}
