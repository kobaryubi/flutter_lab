part of 'router.dart';

@TypedGoRoute<UrlNavigationRoute>(
  path: Routes.urlNavigation,
)
@immutable
class UrlNavigationRoute extends GoRouteData with $UrlNavigationRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const UrlNavigationScreen();
  }
}
