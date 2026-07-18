part of 'router.dart';

@TypedGoRoute<AppLinksRoute>(
  path: Routes.appLinks,
  name: 'app_links',
)
@immutable
class AppLinksRoute extends GoRouteData with $AppLinksRoute {
  const AppLinksRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AppLinksScreen();
}
