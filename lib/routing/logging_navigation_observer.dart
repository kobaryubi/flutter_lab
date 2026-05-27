import 'package:flutter/widgets.dart';
import 'package:flutter_lab/application/logger/logger_gateway.dart';

/// A [NavigatorObserver] that logs every push/pop/replace/remove event
/// through [LoggerGateway], formatted as the current URI.
///
/// Different event types are routed to different log levels so the
/// underlying logger (e.g. Talker) renders them in distinct colors:
///
/// - push    → `info`    (blue)
/// - pop     → `debug`   (grey)
/// - remove  → `debug`   (grey)
/// - replace → `warning` (yellow)
///
/// The URI is read on demand via the `getCurrentUri` callback, which
/// should return the latest URI from
/// `GoRouter.routerDelegate.currentConfiguration.uri`. A callback is
/// used (rather than passing the GoRouter directly) to avoid the
/// chicken-and-egg problem: the observer must be supplied at GoRouter
/// construction time, so the instance does not yet exist.
///
/// Each log line also includes `route.runtimeType` so that pushes which
/// do not change the URI (for example a `showDialog` opening a
/// `DialogRoute` on top of the current page) remain distinguishable in
/// the log stream.
///
/// Provide a `tag` (for example `root`, `shell:home`) so multiple
/// observers attached to different navigators can be told apart.
class LoggingNavigationObserver extends NavigatorObserver {
  /// Creates an observer tagged with [tag] that logs to [logger] and
  /// reads the current URI via [getCurrentUri].
  LoggingNavigationObserver({
    required String tag,
    required LoggerGateway logger,
    required Uri Function() getCurrentUri,
  }) : _tag = tag,
       _logger = logger,
       _getCurrentUri = getCurrentUri;

  final String _tag;
  final LoggerGateway _logger;
  final Uri Function() _getCurrentUri;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _logger.info(
      '[nav:$_tag] push    uri=${_getCurrentUri()} (${route.runtimeType})',
    );
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _logger.debug(
      '[nav:$_tag] pop     uri=${_getCurrentUri()} (${route.runtimeType})',
    );
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _logger.debug(
      '[nav:$_tag] remove  uri=${_getCurrentUri()} (${route.runtimeType})',
    );
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    _logger.warning(
      '[nav:$_tag] replace uri=${_getCurrentUri()} '
      '(${oldRoute?.runtimeType} -> ${newRoute?.runtimeType})',
    );
  }
}
