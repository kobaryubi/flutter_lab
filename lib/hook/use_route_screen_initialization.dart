import 'package:flutter/widgets.dart';
import 'package:flutter_lab/hook/use_is_current_route.dart';
import 'package:flutter_lab/hook/use_screen_initialization.dart';

/// Runs [onInitialize] for a normal pushed route whenever it becomes the
/// foreground screen: first appearance, returning to it after a pushed route
/// is popped, and app resume from background while it is visible.
///
/// Pass the shared route observer (e.g. `ref.read(routeObserverProvider)`).
void useRouteScreenInitialization(
  RouteObserver<ModalRoute<void>> routeObserver, {
  required VoidCallback onInitialize,
}) {
  final isVisible = useIsCurrentRoute(routeObserver);

  useScreenInitialization(isVisible: isVisible, onInitialize: onInitialize);
}
