part of 'router.dart';

@TypedGoRoute<RefreshTokenLoginRoute>(
  path: Routes.refreshTokenLogin,
  name: 'refresh_token_login',
)
@immutable
class RefreshTokenLoginRoute extends GoRouteData with $RefreshTokenLoginRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RefreshTokenLoginScreen();
}
