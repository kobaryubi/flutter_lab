import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

/// Extension on [BuildContext] that provides `popUntil` functionality
/// for GoRouter navigation.
extension PopUntilExtension on BuildContext {
  /// Pops routes from the navigation stack until the [predicate] returns true
  /// for the current top [GoRoute].
  ///
  /// The predicate receives each [GoRoute] from the top of the stack.
  /// When the predicate returns true, that route becomes the new top.
  void popUntil(bool Function(GoRoute route) predicate) {
    final delegate = GoRouter.of(this).routerDelegate;
    var configuration = delegate.currentConfiguration;
    var routes = configuration.routes.whereType<GoRoute>();

    final allRouteTypes = configuration.routes
        .map((route) => route.runtimeType)
        .toList();
    final goRoutePaths = routes.map((route) => route.path).toList();

    log(
      '[popUntil] Start: '
      'all routes = $allRouteTypes, '
      'GoRoutes = $goRoutePaths',
    );

    while (routes.length > 1 && !predicate(configuration.last.route)) {
      final removedRoute = configuration.last.route;

      log('[popUntil] Removing: path="${removedRoute.path}"');

      configuration = configuration.remove(configuration.last);
      routes = configuration.routes.whereType<GoRoute>();

      log(
        '[popUntil] Remaining GoRoutes = '
        '${routes.map((route) => route.path).toList()}',
      );
    }

    log('[popUntil] Done: top route = "${configuration.last.route.path}"');

    delegate.setNewRoutePath(configuration);
  }
}
