part of 'router.dart';

@TypedGoRoute<MaxSdkRoute>(
  path: Routes.maxSdk,
)
@immutable
class MaxSdkRoute extends GoRouteData with $MaxSdkRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const MaxSdkScreen();
}
