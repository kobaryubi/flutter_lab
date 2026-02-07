part of 'router.dart';

@TypedGoRoute<PermissionRoute>(
  path: Routes.permission,
)
@immutable
class PermissionRoute extends GoRouteData with $PermissionRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PermissionScreen();
}
