part of 'router.dart';

@TypedGoRoute<CameraRoute>(path: Routes.camera)
@immutable
class CameraRoute extends GoRouteData with $CameraRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CameraScreen();
}
