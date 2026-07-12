part of 'router.dart';

@TypedGoRoute<RefreshTokenMyPageRoute>(
  path: Routes.refreshTokenMyPage,
  name: 'refresh_token_my_page',
)
@immutable
class RefreshTokenMyPageRoute extends GoRouteData
    with $RefreshTokenMyPageRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RefreshTokenMyPageScreen();
}
