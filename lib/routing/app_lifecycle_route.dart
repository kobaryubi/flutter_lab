part of 'router.dart';

@TypedGoRoute<AppLifecycleRoute>(
  path: Routes.appLifecycle,
  name: 'app_lifecycle',
)
@immutable
class AppLifecycleRoute extends GoRouteData with $AppLifecycleRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AppLifecycleScreen();
}
