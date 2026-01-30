part of 'router.dart';

/// Branch data classes for each tab.
class ShellDemoTabABranch extends StatefulShellBranchData {
  const ShellDemoTabABranch();
}

class ShellDemoTabBBranch extends StatefulShellBranchData {
  const ShellDemoTabBBranch();
}

class ShellDemoTabCBranch extends StatefulShellBranchData {
  const ShellDemoTabCBranch();
}

/// Stateful shell route with 3 branches for the shell demo.
@TypedStatefulShellRoute<ShellDemoRoute>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<ShellDemoTabABranch>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<ShellDemoTabARoute>(path: Routes.shellDemoTabA),
      ],
    ),
    TypedStatefulShellBranch<ShellDemoTabBBranch>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<ShellDemoTabBRoute>(path: Routes.shellDemoTabB),
      ],
    ),
    TypedStatefulShellBranch<ShellDemoTabCBranch>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<ShellDemoTabCRoute>(path: Routes.shellDemoTabC),
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
  ) {
    return ShellDemoScaffold(navigationShell: navigationShell);
  }
}

@immutable
class ShellDemoTabARoute extends GoRouteData with $ShellDemoTabARoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BranchScreen(title: 'Tab A', branchIndex: 0);
  }
}

@immutable
class ShellDemoTabBRoute extends GoRouteData with $ShellDemoTabBRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BranchScreen(title: 'Tab B', branchIndex: 1);
  }
}

@immutable
class ShellDemoTabCRoute extends GoRouteData with $ShellDemoTabCRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BranchScreen(title: 'Tab C', branchIndex: 2);
  }
}
