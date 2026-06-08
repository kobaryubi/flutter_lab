part of 'router.dart';

@TypedGoRoute<StackFitRoute>(
  path: Routes.stackFit,
  name: 'stack_fit',
)
@immutable
class StackFitRoute extends GoRouteData with $StackFitRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const StackFitScreen();
}
