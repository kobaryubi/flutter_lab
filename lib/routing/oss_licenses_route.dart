part of 'router.dart';

@TypedGoRoute<OssLicensesRoute>(
  path: Routes.ossLicenses,
  name: 'oss_licenses',
)
@immutable
class OssLicensesRoute extends GoRouteData with $OssLicensesRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OssLicensesScreen();
}
