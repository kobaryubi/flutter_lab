part of 'router.dart';

@TypedGoRoute<PigeonRoute>(
  path: Routes.pigeon,
  name: 'pigeon',
)
@immutable
class PigeonRoute extends GoRouteData with $PigeonRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PigeonScreen();
}
