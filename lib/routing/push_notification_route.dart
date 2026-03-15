part of 'router.dart';

@TypedGoRoute<PushNotificationRoute>(
  path: Routes.pushNotification,
  name: 'push_notification',
)
@immutable
class PushNotificationRoute extends GoRouteData with $PushNotificationRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PushNotificationScreen();
}
