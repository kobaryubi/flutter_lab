part of 'router.dart';

@TypedGoRoute<OcrRoute>(path: Routes.ocr)
@immutable
class OcrRoute extends GoRouteData with $OcrRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OcrScreen();
  }
}
