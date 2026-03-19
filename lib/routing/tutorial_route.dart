part of 'router.dart';

@TypedGoRoute<TutorialRoute>(
  path: Routes.tutorial,
  name: 'tutorial',
)
@immutable
class TutorialRoute extends GoRouteData with $TutorialRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const TutorialScreen();
}
