part of 'router.dart';

@TypedGoRoute<AnimatedSwitcherRoute>(
  path: Routes.animatedSwitcher,
  name: 'animated_switcher',
)
@immutable
class AnimatedSwitcherRoute extends GoRouteData with $AnimatedSwitcherRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AnimatedSwitcherScreen();
}
