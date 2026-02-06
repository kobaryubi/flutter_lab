part of 'router.dart';

@TypedGoRoute<PopScopeRoute>(
  path: Routes.popScope,
)
@immutable
class PopScopeRoute extends GoRouteData with $PopScopeRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PopScopeScreen();
}
