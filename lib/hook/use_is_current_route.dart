import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/hook/use_route_aware.dart';

/// Tracks whether this pushed route is currently the topmost (visible) one.
///
/// Starts `true` because a route is the current one the moment it is pushed.
/// [useRouteAware] does not retroactively fire `didPush` for an already
/// mounted route, so the initial value — not a callback — is what covers the
/// first appearance. Only the while-mounted transitions are tracked:
/// `didPushNext` (covered by a new route) and `didPopNext` (that route
/// popped, so this one shows again). `didPop` is intentionally ignored — the
/// route is unmounting, so its visibility no longer matters.
bool useIsCurrentRoute(RouteObserver<ModalRoute<void>> routeObserver) {
  final isCurrent = useState(true);

  /// Marks the route visible again when a route on top of it is popped.
  void handleBecomeVisible() {
    isCurrent.value = true;
  }

  /// Marks the route hidden when another route is pushed on top of it.
  void handleBecomeHidden() {
    isCurrent.value = false;
  }

  useRouteAware(
    routeObserver,
    didPopNext: handleBecomeVisible,
    didPushNext: handleBecomeHidden,
  );

  return isCurrent.value;
}
