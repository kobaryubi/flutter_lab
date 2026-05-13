import 'package:flutter/cupertino.dart' show Listenable;
import 'package:flutter/foundation.dart' show Listenable;
import 'package:flutter/material.dart' show Listenable;
import 'package:flutter/widgets.dart' show Listenable;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

/// Returns the [GoRouterState] of the currently active (top / innermost)
/// route and rebuilds the host widget whenever the route changes.
///
/// In `ShellRoute` setups this resolves to the inner page's state, not
/// the shell's, so a caller can read the actually displayed route via
/// `state.matchedLocation` / `state.fullPath` / `state.uri`.
///
/// Implementation: subscribes to the [GoRouter.routerDelegate]
/// [Listenable] via [useListenable]; route changes notify the delegate
/// and trigger a rebuild.
GoRouterState useTopRoute() {
  final router = GoRouter.of(useContext());
  useListenable(router.routerDelegate);

  return router.state;
}
