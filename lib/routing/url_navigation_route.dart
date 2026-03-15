part of 'router.dart';

@TypedGoRoute<UrlNavigationRoute>(
  path: Routes.urlNavigation,
  name: 'url_navigation',
)
@immutable
class UrlNavigationRoute extends GoRouteData with $UrlNavigationRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const UrlNavigationScreen();
}
