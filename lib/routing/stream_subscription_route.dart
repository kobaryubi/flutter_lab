part of 'router.dart';

@TypedGoRoute<StreamSubscriptionRoute>(
  path: Routes.streamSubscription,
  name: 'stream_subscription',
)
@immutable
class StreamSubscriptionRoute extends GoRouteData
    with $StreamSubscriptionRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const StreamSubscriptionScreen();
}
