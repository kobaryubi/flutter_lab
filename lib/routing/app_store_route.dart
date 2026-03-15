part of 'router.dart';

@TypedGoRoute<AppStoreRoute>(
  path: Routes.appStore,
  name: 'app_store',
)
@immutable
class AppStoreRoute extends GoRouteData with $AppStoreRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AppStoreScreen();
}
