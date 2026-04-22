part of 'router.dart';

@TypedGoRoute<TalkerLogsRoute>(
  path: Routes.talkerLogs,
  name: 'talker_logs',
)
@immutable
class TalkerLogsRoute extends GoRouteData with $TalkerLogsRoute {
  const TalkerLogsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const TalkerLogsScreen();
}
