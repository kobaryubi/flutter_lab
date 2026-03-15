part of 'router.dart';

@TypedGoRoute<PetCacheRoute>(
  path: Routes.petCache,
  name: 'pet_cache',
)
@immutable
class PetCacheRoute extends GoRouteData with $PetCacheRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PetCacheScreen();
}
