part of 'router.dart';

@TypedGoRoute<InAppReviewRoute>(
  path: Routes.inAppReview,
  name: 'in_app_review',
)
@immutable
class InAppReviewRoute extends GoRouteData with $InAppReviewRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const InAppReviewScreen();
}
