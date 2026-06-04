part of 'router.dart';

@TypedGoRoute<RevalidatingImageRoute>(
  path: Routes.revalidatingImage,
  name: 'revalidating_image',
)
@immutable
class RevalidatingImageRoute extends GoRouteData with $RevalidatingImageRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RevalidatingImageScreen();
}
