part of 'router.dart';

@TypedGoRoute<E2eCounterRoute>(
  path: Routes.e2eCounter,
  name: 'e2eCounter',
)
@immutable
class E2eCounterRoute extends GoRouteData with $E2eCounterRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const E2eCounterScreen();
}
