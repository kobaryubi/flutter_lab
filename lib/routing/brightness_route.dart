part of 'router.dart';

@TypedGoRoute<BrightnessRoute>(
  path: Routes.brightness,
)
@immutable
class BrightnessRoute extends GoRouteData with $BrightnessRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BrightnessScreen();
  }
}
