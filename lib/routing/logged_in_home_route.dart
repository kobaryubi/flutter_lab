part of 'router.dart';

@TypedStatefulShellRoute<LoggedInHomeRoute>(
  branches: [
    TypedStatefulShellBranch<LoggedInHomeTab1Branch>(
      routes: [
        TypedGoRoute<LoggedInHomeTab1Route>(
          path: Routes.loggedInHomeTab1,
          name: 'logged_in_home_tab1',
        ),
      ],
    ),
    TypedStatefulShellBranch<LoggedInHomeTab2Branch>(
      routes: [
        TypedGoRoute<LoggedInHomeTab2Route>(
          path: Routes.loggedInHomeTab2,
          name: 'logged_in_home_tab2',
        ),
      ],
    ),
  ],
)
@immutable
class LoggedInHomeRoute extends StatefulShellRouteData {
  const LoggedInHomeRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) => LoggedInHomeScreen(navigationShell: navigationShell);
}

class LoggedInHomeTab1Branch extends StatefulShellBranchData {}

class LoggedInHomeTab2Branch extends StatefulShellBranchData {}

/// Tab 1 of the logged-in home shell. Optional [nonce] is exposed as a
/// query parameter; varying its value across navigations forces the
/// screen's useEffect to re-fire even though the shell preserves the
/// underlying element across branch swaps. Push-notification entry
/// points pass a fresh nonce each time so each tap re-runs the
/// consume-and-navigate flow.
@immutable
class LoggedInHomeTab1Route extends GoRouteData with $LoggedInHomeTab1Route {
  const LoggedInHomeTab1Route({this.nonce});

  final String? nonce;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    debugPrint('LoggedInHomeTab1Route: build (nonce=$nonce)');
    return LoggedInHomeTab1Screen(key: ValueKey(nonce));
  }
}

@immutable
class LoggedInHomeTab2Route extends GoRouteData with $LoggedInHomeTab2Route {
  const LoggedInHomeTab2Route();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    debugPrint('LoggedInHomeTab2Route: build');
    return const LoggedInHomeTab2Screen();
  }
}
