part of 'router.dart';

@TypedGoRoute<CounterRoute>(
  path: Routes.counter,
  name: 'counter',
)
@immutable
class CounterRoute extends GoRouteData with $CounterRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CounterScreen();
}
