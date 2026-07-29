part of 'router.dart';

@TypedGoRoute<EditableTextSelectionRoute>(
  path: Routes.editableTextSelection,
  name: 'editable_text_selection',
)
@immutable
class EditableTextSelectionRoute extends GoRouteData
    with $EditableTextSelectionRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const EditableTextSelectionScreen();
}
