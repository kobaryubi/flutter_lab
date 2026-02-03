part of 'router.dart';

@TypedGoRoute<PushNotificationRoute>(
  path: Routes.pushNotification,
)
@immutable
class PushNotificationRoute extends GoRouteData with $PushNotificationRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PushNotificationScreen();
  }
}
