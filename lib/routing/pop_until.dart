import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

/// Extension on [BuildContext] that provides `popUntil` functionality
/// for GoRouter navigation.
extension PopUntilExtension on BuildContext {
  /// Pops routes from the navigation stack until the [predicate] returns
  /// true for the current top [GoRoute].
  ///
  /// **Strategy:**
  /// 1. If the target route exists in the current [RouteMatchList],
  ///    removes routes above it using [GoRouterDelegate.setNewRoutePath].
  /// 2. If the target is not in the current configuration (e.g., it was
  ///    on a previous push level before a [ShellRoute]), searches the
  ///    router's full route tree for a match and falls back to
  ///    [GoRouter.go].
  void popUntil(bool Function(GoRoute route) predicate) {
    final router = GoRouter.of(this);
    final delegate = router.routerDelegate;
    var configuration = delegate.currentConfiguration;

    log(
      '[popUntil] Start: '
      'routes = ${_formatRoutes(configuration.routes)}, '
      'matches = '
      '${_formatMatches(configuration.matches)}',
    );

    // Check if the target route is in the current configuration.
    final targetInConfig = configuration.routes.whereType<GoRoute>().any(
      predicate,
    );

    if (!targetInConfig) {
      // Search the router's full route tree for a matching route.
      final targetRoute = _findGoRoute(
        routes: router.configuration.routes,
        predicate: predicate,
      );

      if (targetRoute == null) {
        log('[popUntil] No matching route found');

        return;
      }

      log(
        '[popUntil] Target "${targetRoute.path}" not in '
        'current configuration, falling back to go()',
      );

      router.go(targetRoute.path);

      return;
    }

    // Remove routes from the top until the predicate matches.
    var routes = configuration.routes.whereType<GoRoute>();

    while (routes.length > 1 && !predicate(configuration.last.route)) {
      final removedRoute = configuration.last.route;

      log(
        '[popUntil] Removing: '
        'path="${removedRoute.path}"',
      );

      configuration = configuration.remove(configuration.last);
      routes = configuration.routes.whereType<GoRoute>();

      log(
        '[popUntil] After remove: '
        'routes = ${_formatRoutes(configuration.routes)}, '
        'matches = '
        '${_formatMatches(configuration.matches)}',
      );
    }

    log(
      '[popUntil] Done: '
      'top route = "${configuration.last.route.path}"',
    );

    delegate.setNewRoutePath(configuration);
  }
}

/// Recursively searches the route tree for a [GoRoute] that matches
/// the [predicate].
GoRoute? _findGoRoute({
  required List<RouteBase> routes,
  required bool Function(GoRoute route) predicate,
}) {
  for (final route in routes) {
    if (route is GoRoute && predicate(route)) {
      return route;
    }

    final found = _findGoRoute(
      routes: route.routes,
      predicate: predicate,
    );

    if (found != null) {
      return found;
    }
  }

  return null;
}

/// Formats a list of routes for debug logging.
///
/// Shows the type and path of each route.
/// Example: `[GoRoute(/), ShellRoute, GoRoute(/detail)]`
String _formatRoutes(List<RouteBase> routes) {
  final formatted = routes.map((route) {
    if (route is GoRoute) {
      return 'GoRoute(${route.path})';
    }

    return route.runtimeType.toString();
  }).toList();

  return '$formatted';
}

/// Formats a list of route matches for debug logging.
///
/// Shows the match structure including nested shell route matches.
/// Example: `[RouteMatch(/), ShellRouteMatch[RouteMatch(/tab1)]]`
String _formatMatches(List<RouteMatchBase> matches) {
  final formatted = matches.map((match) {
    if (match is ShellRouteMatch) {
      return 'ShellRouteMatch'
          '${_formatMatches(match.matches)}';
    }

    final route = match.route;

    if (route is GoRoute) {
      return 'RouteMatch(${route.path})';
    }

    return 'RouteMatch(${route.runtimeType})';
  }).toList();

  return '$formatted';
}
