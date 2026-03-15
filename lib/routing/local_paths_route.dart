part of 'router.dart';

@TypedGoRoute<LocalPathsRoute>(path: Routes.localPaths, name: 'local_paths')
@immutable
class LocalPathsRoute extends GoRouteData with $LocalPathsRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LocalPathsScreen();
}
