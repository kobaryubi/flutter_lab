part of 'router.dart';

@TypedGoRoute<LoggedInHomeRoute>(
  path: Routes.loggedInHome,
  name: 'logged_in_home',
)
@immutable
class LoggedInHomeRoute extends GoRouteData with $LoggedInHomeRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LoggedInHomeScreen();
}
