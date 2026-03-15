part of 'router.dart';

@TypedGoRoute<ArutanaRoute>(
  path: Routes.arutana,
  name: 'arutana',
)
@immutable
class ArutanaRoute extends GoRouteData with $ArutanaRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ArutanaScreen();
}
