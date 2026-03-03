part of 'router.dart';

@TypedGoRoute<HorizontalLayoutRoute>(
  path: Routes.horizontalLayout,
)
@immutable
class HorizontalLayoutRoute extends GoRouteData with $HorizontalLayoutRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const HorizontalLayoutScreen();
}
