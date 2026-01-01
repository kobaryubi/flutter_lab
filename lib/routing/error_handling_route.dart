part of 'router.dart';

@TypedGoRoute<ErrorHandlingRoute>(path: Routes.errorHandling)
@immutable
class ErrorHandlingRoute extends GoRouteData with $ErrorHandlingRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ErrorHandlingScreen();
  }
}
