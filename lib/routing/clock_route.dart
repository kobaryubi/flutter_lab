part of 'router.dart';

@TypedGoRoute<ClockRoute>(
  path: Routes.clock,
)
@immutable
class ClockRoute extends GoRouteData with $ClockRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ClockScreen();
}
