part of 'router.dart';

@TypedGoRoute<ScreenshotPreventionRoute>(
  path: Routes.screenshotPrevention,
  name: 'screenshot_prevention',
)
@immutable
class ScreenshotPreventionRoute extends GoRouteData
    with $ScreenshotPreventionRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ScreenshotPreventionScreen();
}
