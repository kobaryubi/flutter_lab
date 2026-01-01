part of 'router.dart';

@TypedGoRoute<PortalRoute>(path: Routes.portal)
@immutable
class PortalRoute extends GoRouteData with $PortalRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PortalScreen();
  }
}
