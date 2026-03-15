part of 'router.dart';

@TypedGoRoute<SharedPreferencesRoute>(
  path: Routes.sharedPreferences,
  name: 'shared_preferences',
)
@immutable
class SharedPreferencesRoute extends GoRouteData with $SharedPreferencesRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SharedPreferencesScreen();
}
