part of 'router.dart';

@TypedGoRoute<ShellDemoDetailRoute>(path: Routes.shellDemoDetail)
@immutable
class ShellDemoDetailRoute extends GoRouteData with $ShellDemoDetailRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ShellDemoDetailScreen();
}
