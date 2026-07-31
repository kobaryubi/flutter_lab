part of 'router.dart';

@TypedGoRoute<CarouselRoute>(path: Routes.carousel, name: 'carousel')
@immutable
class CarouselRoute extends GoRouteData with $CarouselRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CarouselScreen();
}
