part of 'router.dart';

@TypedGoRoute<AdjustDeferredDeeplinkRoute>(
  path: Routes.adjustDeferredDeeplink,
  name: 'adjust_deferred_deeplink',
)
@immutable
class AdjustDeferredDeeplinkRoute extends GoRouteData
    with $AdjustDeferredDeeplinkRoute {
  const AdjustDeferredDeeplinkRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AdjustDeferredDeeplinkScreen();
}
