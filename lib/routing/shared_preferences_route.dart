part of 'router.dart';

@TypedGoRoute<SharedPreferencesRoute>(
  path: Routes.sharedPreferences,
)
@immutable
class SharedPreferencesRoute extends GoRouteData with $SharedPreferencesRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SharedPreferencesScreen();
}
