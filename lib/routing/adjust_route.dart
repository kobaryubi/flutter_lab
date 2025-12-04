part of 'router.dart';

@TypedGoRoute<AdjustRoute>(path: Routes.adjust)
@immutable
class AdjustRoute extends GoRouteData with $AdjustRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AdjustScreen();
  }
}
