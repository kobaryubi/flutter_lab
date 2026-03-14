part of 'router.dart';

@TypedGoRoute<AnalyticsRoute>(
  path: Routes.analytics,
)
@immutable
class AnalyticsRoute extends GoRouteData with $AnalyticsRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AnalyticsScreen();
}
