part of 'router.dart';

@TypedGoRoute<TextScaleRoute>(
  path: Routes.textScale,
  name: 'text_scale',
)
@immutable
class TextScaleRoute extends GoRouteData with $TextScaleRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const TextScaleScreen();
}
