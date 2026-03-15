part of 'router.dart';

@TypedGoRoute<ProfilePassportRoute>(
  path: Routes.profilePassport,
  name: 'profile_passport',
)
@immutable
class ProfilePassportRoute extends GoRouteData with $ProfilePassportRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ProfilePassportScreen();
}
