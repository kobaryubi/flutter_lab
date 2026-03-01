import 'package:flutter/widgets.dart';

/// A [NavigatorObserver] that reports navigation lifecycle events
/// via a callback.
///
/// Logs `didPush`, `didPop`, `didReplace`, and `didRemove` events
/// with route names and timestamps for demonstration purposes.
class ObserverDemoObserver extends NavigatorObserver {
  ObserverDemoObserver({required this.onEvent});

  /// Callback invoked with a formatted event string.
  final void Function(String) onEvent;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final timestamp = _formatTimestamp();
    onEvent(
      '[$timestamp] didPush: ${_routeName(route)}'
      ' (from ${_routeName(previousRoute)})',
    );
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final timestamp = _formatTimestamp();
    onEvent(
      '[$timestamp] didPop: ${_routeName(route)}'
      ' (to ${_routeName(previousRoute)})',
    );
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    final timestamp = _formatTimestamp();
    onEvent(
      '[$timestamp] didReplace: ${_routeName(oldRoute)}'
      ' -> ${_routeName(newRoute)}',
    );
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final timestamp = _formatTimestamp();
    onEvent('[$timestamp] didRemove: ${_routeName(route)}');
  }

  String _routeName(Route<dynamic>? route) => route?.settings.name ?? 'unknown';

  String _formatTimestamp() {
    final now = DateTime.now();

    return '${now.hour.toString().padLeft(2, '0')}:'
        '${now.minute.toString().padLeft(2, '0')}:'
        '${now.second.toString().padLeft(2, '0')}';
  }
}
