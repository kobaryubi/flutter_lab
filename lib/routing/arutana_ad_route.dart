part of 'router.dart';

@TypedGoRoute<ArutanaAdRoute>(path: Routes.arutanaAd)
@immutable
class ArutanaAdRoute extends GoRouteData with $ArutanaAdRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ArutanaAdScreen();
}
