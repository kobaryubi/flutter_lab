part of 'router.dart';

@TypedGoRoute<FormBuilderRoute>(
  path: Routes.formBuilder,
  name: 'form_builder',
)
@immutable
class FormBuilderRoute extends GoRouteData with $FormBuilderRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const FormBuilderScreen();
}
