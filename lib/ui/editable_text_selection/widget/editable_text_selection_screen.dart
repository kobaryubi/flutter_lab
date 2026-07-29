import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen demonstrating text selection on a raw [EditableText] without
/// material.
///
/// Step 2: the bare [EditableText]. It renders the text, but nothing
/// reacts to touch yet: tapping does not even focus it, because
/// [EditableText] detects no gestures by itself.
class EditableTextSelectionScreen extends StatelessWidget {
  const EditableTextSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('EditableText selection')),
    child: _Body(),
  );
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    // The controller owns the text and the current TextSelection;
    // the focus node decides when the field talks to the keyboard.
    // Both are cached by hooks so rebuilds reuse the same instances.
    final controller = useTextEditingController(
      text:
          'Step 2: a bare EditableText. It shows text, but touch does '
          'nothing yet: tap and long-press are not even detected.',
    );
    final focusNode = useFocusNode();

    return Padding(
      padding: const .all(16),
      child: EditableText(
        controller: controller,
        focusNode: focusNode,
        // All three below are required: without a material Theme nothing
        // supplies a default text style or cursor colors.
        style: const TextStyle(fontSize: 16, color: Color(0xFF000000)),
        cursorColor: const Color(0xFF000000),
        // Only used by iOS's floating cursor (force-press / spacebar drag).
        backgroundCursorColor: const Color(0xFF808080),
      ),
    );
  }
}
