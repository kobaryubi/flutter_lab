part of 'router.dart';

@TypedGoRoute<LaunchUrlRoute>(path: Routes.launchUrl)
@immutable
class LaunchUrlRoute extends GoRouteData with $LaunchUrlRoute {
  LaunchUrlRoute({required this.url});
  final String url;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LaunchUrlScreen(url: url);
  }
}
