import 'package:flutter/widgets.dart';
import 'package:flutter_lab/hook/use_screen_initialization.dart';
import 'package:flutter_lab/presentation/core/hook/use_current_route_state.dart';

/// Runs [onInitialize] for a shell branch screen whenever it becomes the
/// active branch: first appearance, returning to it (its tab is re-selected
/// or a route pushed on top of it is popped), and app resume from background
/// while it is visible.
///
/// [location] is this branch's route path (e.g. `Routes.shellDemoTab1`).
/// Shell branches stay mounted inside an `IndexedStack`, so they are never
/// pushed/popped relative to each other — `RouteAware.didPopNext` would not
/// fire. Visibility is therefore derived from the active route's
/// `matchedLocation`, which also flips back to true when a sub-route pushed
/// on top of the branch is popped.
void useShellScreenInitialization(
  String location, {
  required VoidCallback onInitialize,
}) {
  final routeState = useCurrentRouteState();
  final isVisible = routeState.matchedLocation == location;

  useScreenInitialization(isVisible: isVisible, onInitialize: onInitialize);
}
