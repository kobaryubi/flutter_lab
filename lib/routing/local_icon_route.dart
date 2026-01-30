part of 'router.dart';

@TypedGoRoute<LocalIconRoute>(path: Routes.localIcon)
@immutable
class LocalIconRoute extends GoRouteData with $LocalIconRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LocalIconScreen();
  }
}
