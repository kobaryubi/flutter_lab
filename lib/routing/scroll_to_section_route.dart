part of 'router.dart';

@TypedGoRoute<ScrollToSectionRoute>(
  path: Routes.scrollToSection,
  name: 'scroll_to_section',
)
@immutable
class ScrollToSectionRoute extends GoRouteData with $ScrollToSectionRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ScrollToSectionScreen();
}
