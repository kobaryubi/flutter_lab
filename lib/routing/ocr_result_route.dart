part of 'router.dart';

@TypedGoRoute<OcrResultRoute>(path: Routes.ocrResult)
@immutable
class OcrResultRoute extends GoRouteData with $OcrResultRoute {
  const OcrResultRoute({required this.text});

  final String text;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      OcrResultScreen(text: text);
}
