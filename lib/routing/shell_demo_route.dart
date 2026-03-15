part of 'router.dart';

@TypedStatefulShellRoute<ShellDemoRoute>(
  branches: [
    TypedStatefulShellBranch<ShellDemoTab1Branch>(
      routes: [
        TypedGoRoute<ShellDemoTab1Route>(
          path: Routes.shellDemoTab1,
          name: 'shell_demo_tab1',
        ),
      ],
    ),
    TypedStatefulShellBranch<ShellDemoTab2Branch>(
      routes: [
        TypedGoRoute<ShellDemoTab2Route>(
          path: Routes.shellDemoTab2,
          name: 'shell_demo_tab2',
        ),
      ],
    ),
  ],
)
@immutable
class ShellDemoRoute extends StatefulShellRouteData {
  const ShellDemoRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) => ShellDemoScreen(navigationShell: navigationShell);
}

class ShellDemoTab1Branch extends StatefulShellBranchData {}

class ShellDemoTab2Branch extends StatefulShellBranchData {}

@immutable
class ShellDemoTab1Route extends GoRouteData with $ShellDemoTab1Route {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ShellDemoTab1Screen();
}

@immutable
class ShellDemoTab2Route extends GoRouteData with $ShellDemoTab2Route {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ShellDemoTab2Screen();
}
