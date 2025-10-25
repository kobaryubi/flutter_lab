part of '../router.dart';

@immutable
class WorkoutListRoute extends GoRouteData with $WorkoutListRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const WorkoutListScreen();
  }
}
