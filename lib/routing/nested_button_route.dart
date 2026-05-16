part of 'router.dart';

@TypedGoRoute<NestedButtonRoute>(
  path: Routes.nestedButton,
)
@immutable
class NestedButtonRoute extends GoRouteData with $NestedButtonRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const NestedButtonScreen();
}
