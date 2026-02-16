part of 'router.dart';

@TypedGoRoute<AsyncStateRaceRoute>(
  path: Routes.asyncStateRace,
)
@immutable
class AsyncStateRaceRoute extends GoRouteData with $AsyncStateRaceRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AsyncStateRaceScreen();
}
