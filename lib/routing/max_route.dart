part of 'router.dart';

@TypedGoRoute<MaxRoute>(
  path: Routes.max,
)
@immutable
class MaxRoute extends GoRouteData with $MaxRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) => const MaxScreen();
}
