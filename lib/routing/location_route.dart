part of 'router.dart';

@TypedGoRoute<LocationRoute>(
  path: Routes.location,
)
@immutable
class LocationRoute extends GoRouteData with $LocationRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ColoredBox(
      color: AppColors.primary,
      child: SafeArea(
        child: ColoredBox(
          color: AppColors.white1,
          child: Column(
            children: [
              AppBar(title: const Text('Location')),
              Expanded(child: const LocationScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
