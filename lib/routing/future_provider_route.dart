part of 'router.dart';

@TypedGoRoute<FutureProviderRoute>(
  path: Routes.futureProvider,
)
@immutable
class FutureProviderRoute extends GoRouteData with $FutureProviderRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const FutureProviderScreen();
}
