part of 'router.dart';

@TypedGoRoute<HorizontalLayoutRoute>(
  path: Routes.horizontalLayout,
  name: 'horizontal_layout',
)
@immutable
class HorizontalLayoutRoute extends GoRouteData with $HorizontalLayoutRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const HorizontalLayoutScreen();
}
