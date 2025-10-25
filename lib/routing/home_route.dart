part of 'router.dart';

@TypedGoRoute<HomeRoute>(
  path: Routes.home,
)
@immutable
class HomeRoute extends GoRouteData with $HomeRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}
