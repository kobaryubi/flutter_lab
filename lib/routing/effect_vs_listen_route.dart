part of 'router.dart';

@TypedGoRoute<EffectVsListenRoute>(
  path: Routes.effectVsListen,
)
@immutable
class EffectVsListenRoute extends GoRouteData with $EffectVsListenRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const EffectVsListenScreen();
}
