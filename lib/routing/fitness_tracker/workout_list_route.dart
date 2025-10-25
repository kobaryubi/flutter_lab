import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/fitness_tracker/widgets/workout_list_screen.dart';
import 'package:go_router/go_router.dart';

part 'workout_list_route.g.dart';

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
