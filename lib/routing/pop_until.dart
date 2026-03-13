import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

/// Extension on [BuildContext] that provides `popUntil` functionality
/// for GoRouter navigation.
extension PopUntilExtension on BuildContext {
  /// Pops routes from the navigation stack until the [predicate] returns
  /// true for the current top [GoRoute].
  ///
  /// Removes routes above the target using
  /// [GoRouterDelegate.setNewRoutePath].
  void popUntil(bool Function(GoRoute route) predicate) {
    final delegate = GoRouter.of(this).routerDelegate;
    var configuration = delegate.currentConfiguration;
    var routes = configuration.routes.whereType<GoRoute>();

    while (routes.length > 1 && !predicate(configuration.last.route)) {
      configuration = configuration.remove(configuration.last);
      routes = configuration.routes.whereType<GoRoute>();
    }

    delegate.setNewRoutePath(configuration);
  }
}
