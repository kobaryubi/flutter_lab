part of '../router.dart';

@TypedGoRoute<WorkoutListRoute>(
  path: Routes.fitnessTrackerWorkoutList,
)
@immutable
class WorkoutListRoute extends GoRouteData with $WorkoutListRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const WorkoutListScreen();
  }
}
