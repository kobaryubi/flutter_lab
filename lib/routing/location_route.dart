part of 'router.dart';

@TypedGoRoute<LocationRoute>(
  path: Routes.location,
)
@immutable
class LocationRoute extends GoRouteData with $LocationRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LocationScreen();
}
