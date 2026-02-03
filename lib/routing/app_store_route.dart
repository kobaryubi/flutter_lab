part of 'router.dart';

@TypedGoRoute<AppStoreRoute>(
  path: Routes.appStore,
)
@immutable
class AppStoreRoute extends GoRouteData with $AppStoreRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AppStoreScreen();
  }
}
