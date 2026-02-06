part of 'router.dart';

@TypedGoRoute<DioCacheRoute>(
  path: Routes.dioCache,
)
@immutable
class DioCacheRoute extends GoRouteData with $DioCacheRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DioCacheScreen();
}
