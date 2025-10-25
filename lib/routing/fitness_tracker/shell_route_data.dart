import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:go_router/go_router.dart';

@TypedStatefulShellRoute<ShellRouteData>(
  branches: [],
)
class ShellRouteData extends StatefulShellRouteData {
  const ShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return Layout(navigationShell: navigationShell);
  }
}
