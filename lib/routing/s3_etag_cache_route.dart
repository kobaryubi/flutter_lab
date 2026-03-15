part of 'router.dart';

@TypedGoRoute<S3EtagCacheRoute>(
  path: Routes.s3EtagCache,
  name: 's3_etag_cache',
)
@immutable
class S3EtagCacheRoute extends GoRouteData with $S3EtagCacheRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const S3EtagCacheScreen();
}
