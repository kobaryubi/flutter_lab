part of 'router.dart';

@TypedGoRoute<VisibilityDetectorRoute>(
  path: Routes.visibilityDetector,
  name: 'visibility_detector',
)
@immutable
class VisibilityDetectorRoute extends GoRouteData
    with $VisibilityDetectorRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const VisibilityDetectorScreen();
}
