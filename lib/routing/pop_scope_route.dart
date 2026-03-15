part of 'router.dart';

@TypedGoRoute<PopScopeRoute>(
  path: Routes.popScope,
  name: 'pop_scope',
)
@immutable
class PopScopeRoute extends GoRouteData with $PopScopeRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PopScopeScreen();
}
