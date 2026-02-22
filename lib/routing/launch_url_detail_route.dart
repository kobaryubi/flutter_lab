part of 'router.dart';

@TypedGoRoute<LaunchUrlDetailRoute>(path: Routes.launchUrlDetail)
@immutable
class LaunchUrlDetailRoute extends GoRouteData with $LaunchUrlDetailRoute {
  const LaunchUrlDetailRoute({required this.url, required this.mode});

  final String url;
  final LaunchUrlMode mode;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      LaunchUrlDetailScreen(url: url, launchUrlMode: mode);
}
