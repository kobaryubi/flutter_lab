part of 'router.dart';

@TypedGoRoute<LocalPathsRoute>(path: Routes.localPaths)
@immutable
class LocalPathsRoute extends GoRouteData with $LocalPathsRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LocalPathsScreen();
  }
}
