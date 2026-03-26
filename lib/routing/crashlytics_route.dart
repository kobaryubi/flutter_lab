part of 'router.dart';

@TypedGoRoute<CrashlyticsRoute>(
  path: Routes.crashlytics,
  name: 'crashlytics',
)
@immutable
class CrashlyticsRoute extends GoRouteData with $CrashlyticsRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CrashlyticsScreen();
}
