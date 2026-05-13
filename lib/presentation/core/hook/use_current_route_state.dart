import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

/// Returns the [GoRouterState] of the currently active (innermost) route
/// and rebuilds the host widget whenever the route changes.
///
/// In `ShellRoute` setups this resolves to the inner page's state, not
/// the shell's, so a caller can read the actually displayed route via
/// `state.matchedLocation` / `state.fullPath` / `state.uri`.
///
/// Implementation: subscribes to [GoRouter.routerDelegate] (a
/// `Listenable`) via [useListenable]; the delegate notifies on route
/// changes and triggers a rebuild.
GoRouterState useCurrentRouteState() {
  final router = GoRouter.of(useContext());
  useListenable(router.routerDelegate);

  return router.state;
}
