part of 'router.dart';

@TypedGoRoute<GoogleApiRoute>(
  path: Routes.googleApi,
)
@immutable
class GoogleApiRoute extends GoRouteData with $GoogleApiRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const GoogleApiScreen();
}
