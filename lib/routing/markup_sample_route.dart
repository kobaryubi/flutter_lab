part of 'router.dart';

@TypedGoRoute<MarkupSampleRoute>(
  path: Routes.markupSample,
  name: 'markup_sample',
)
@immutable
class MarkupSampleRoute extends GoRouteData with $MarkupSampleRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const MarkupSampleScreen();
}
