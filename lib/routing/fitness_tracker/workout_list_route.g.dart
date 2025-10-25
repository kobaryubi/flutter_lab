// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_list_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$workoutListRoute];

RouteBase get $workoutListRoute => GoRouteData.$route(
  path: '/fitness-tracker/workout-list',
  factory: $WorkoutListRoute._fromState,
);

mixin $WorkoutListRoute on GoRouteData {
  static WorkoutListRoute _fromState(GoRouterState state) => WorkoutListRoute();

  @override
  String get location => GoRouteData.$location('/fitness-tracker/workout-list');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
