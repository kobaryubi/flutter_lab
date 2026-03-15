part of 'router.dart';

@TypedGoRoute<EtagCacheRoute>(
  path: Routes.etagCache,
  name: 'etag_cache',
)
@immutable
class EtagCacheRoute extends GoRouteData with $EtagCacheRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const EtagCacheScreen();
}
