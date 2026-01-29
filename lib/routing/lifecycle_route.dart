part of 'router.dart';

@TypedGoRoute<LifecycleRoute>(path: Routes.lifecycle)
@immutable
class LifecycleRoute extends GoRouteData with $LifecycleRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LifecycleScreen();
  }
}
