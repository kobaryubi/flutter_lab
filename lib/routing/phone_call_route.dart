part of 'router.dart';

@TypedGoRoute<PhoneCallRoute>(
  path: Routes.phoneCall,
  name: 'phone_call',
)
@immutable
class PhoneCallRoute extends GoRouteData with $PhoneCallRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PhoneCallScreen();
}
