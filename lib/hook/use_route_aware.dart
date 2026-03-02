import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Hook that subscribes to a [RouteObserver] and delegates the four
/// [RouteAware] lifecycle events to optional callbacks.
///
/// Callers can listen to any combination of [didPopNext], [didPush],
/// [didPop], and [didPushNext] on the given [routeObserver].
void useRouteAware(
  RouteObserver<ModalRoute<void>> routeObserver, {
  VoidCallback? didPopNext,
  VoidCallback? didPush,
  VoidCallback? didPop,
  VoidCallback? didPushNext,
}) {
  final context = useContext();
  final route = ModalRoute.of(context);

  useEffect(
    () {
      if (route == null) return null;

      final callback = _RouteAwareCallback(
        onDidPopNext: didPopNext,
        onDidPush: didPush == null ? null : () => Future(didPush),
        onDidPop: didPop,
        onDidPushNext: didPushNext,
      );

      routeObserver.subscribe(callback, route);

      return () => routeObserver.unsubscribe(callback);
    },
    [route],
  );
}

/// Internal [RouteAware] implementation that delegates to optional callbacks.
class _RouteAwareCallback extends RouteAware {
  _RouteAwareCallback({
    this.onDidPopNext,
    this.onDidPush,
    this.onDidPop,
    this.onDidPushNext,
  });

  final VoidCallback? onDidPopNext;
  final VoidCallback? onDidPush;
  final VoidCallback? onDidPop;
  final VoidCallback? onDidPushNext;

  @override
  void didPopNext() => onDidPopNext?.call();

  @override
  void didPush() => onDidPush?.call();

  @override
  void didPop() => onDidPop?.call();

  @override
  void didPushNext() => onDidPushNext?.call();
}
