part of 'router.dart';

@TypedGoRoute<LocationRoute>(
  path: Routes.location,
)
@immutable
class LocationRoute extends GoRouteData with $LocationRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ColoredBox(
      color: AppColors.primary,
      child: SafeArea(
        child: ColoredBox(
          color: AppColors.white1,
          child: Column(
            children: [
              AppBar(title: Text('Location')),
              Expanded(child: LocationScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
