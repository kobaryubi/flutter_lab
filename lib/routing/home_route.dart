part of 'router.dart';

@TypedGoRoute<HomeRoute>(
  path: Routes.home,
  name: 'home',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<ObserverDemoRoute>(
      path: 'observer_demo',
      name: 'observer_demo',
      routes: <TypedGoRoute<GoRouteData>>[
        TypedGoRoute<ObserverDemoDetailRoute>(
          path: 'detail',
          name: 'observer_demo_detail',
        ),
      ],
    ),
  ],
)
@immutable
class HomeRoute extends GoRouteData with $HomeRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}
