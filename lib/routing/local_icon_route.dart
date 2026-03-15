part of 'router.dart';

@TypedGoRoute<LocalIconRoute>(path: Routes.localIcon, name: 'local_icon')
@immutable
class LocalIconRoute extends GoRouteData with $LocalIconRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LocalIconScreen();
}
