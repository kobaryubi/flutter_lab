part of 'router.dart';

@TypedGoRoute<ShellDemoSubRoute>(path: Routes.shellDemoSub)
@immutable
class ShellDemoSubRoute extends GoRouteData with $ShellDemoSubRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ShellDemoSubScreen();
}
