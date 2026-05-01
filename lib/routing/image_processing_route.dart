part of 'router.dart';

@TypedGoRoute<ImageProcessingRoute>(
  path: Routes.imageProcessing,
  name: 'image_processing',
)
@immutable
class ImageProcessingRoute extends GoRouteData with $ImageProcessingRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ImageProcessingScreen();
}
