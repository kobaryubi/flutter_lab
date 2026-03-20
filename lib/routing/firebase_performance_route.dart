part of 'router.dart';

@TypedGoRoute<FirebasePerformanceRoute>(
  path: Routes.firebasePerformance,
  name: 'firebasePerformance',
)
@immutable
class FirebasePerformanceRoute extends GoRouteData
    with $FirebasePerformanceRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const FirebasePerformanceScreen();
}
