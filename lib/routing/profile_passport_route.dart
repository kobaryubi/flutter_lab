part of 'router.dart';

@TypedGoRoute<ProfilePassportRoute>(
  path: Routes.profilePassport,
)
@immutable
class ProfilePassportRoute extends GoRouteData with $ProfilePassportRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ProfilePassportScreen();
}
