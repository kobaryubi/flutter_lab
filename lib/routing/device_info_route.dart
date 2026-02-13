part of 'router.dart';

@TypedGoRoute<DeviceInfoRoute>(
  path: Routes.deviceInfo,
)
@immutable
class DeviceInfoRoute extends GoRouteData with $DeviceInfoRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DeviceInfoScreen();
}
