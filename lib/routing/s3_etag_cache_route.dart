part of 'router.dart';

@TypedGoRoute<S3EtagCacheRoute>(
  path: Routes.s3EtagCache,
)
@immutable
class S3EtagCacheRoute extends GoRouteData with $S3EtagCacheRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const S3EtagCacheScreen();
  }
}
