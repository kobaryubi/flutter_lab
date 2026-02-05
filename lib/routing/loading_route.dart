part of 'router.dart';

@TypedGoRoute<LoadingRoute>(
  path: Routes.loading,
)
@immutable
class LoadingRoute extends GoRouteData with $LoadingRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoadingScreen();
  }
}
