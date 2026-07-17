part of 'router.dart';

@TypedGoRoute<ErrorPortalRoute>(
  path: Routes.errorPortal,
  name: 'error_portal',
)
@immutable
class ErrorPortalRoute extends GoRouteData with $ErrorPortalRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ErrorPortalScreen();
}
