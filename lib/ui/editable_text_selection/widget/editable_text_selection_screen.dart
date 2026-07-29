import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen demonstrating text selection on a raw [EditableText] without
/// material.
///
/// Step 3: gesture wiring. [TextSelectionGestureDetectorBuilder] — the same
/// widgets-layer class material's TextField uses — converts taps and
/// long-presses into selection commands on [EditableTextState]. Tap now
/// places the cursor and opens the keyboard; long-press selects a word.
/// The selection is still invisible: no highlight color is set yet.
class EditableTextSelectionScreen extends StatelessWidget {
  const EditableTextSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('EditableText selection')),
    child: _Body(),
  );
}

/// Delegate through which [TextSelectionGestureDetectorBuilder] reaches the
/// [EditableTextState] it drives.
///
/// Material implements this interface on the TextField State class; a
/// plain object works just as well and keeps the widget hooks-based.
class _EditableTextSelectionDelegate
    implements TextSelectionGestureDetectorBuilderDelegate {
  _EditableTextSelectionDelegate({required this.editableTextKey});

  /// How the builder finds the [EditableTextState]: the same key must be
  /// passed as [EditableText.key] below.
  @override
  final GlobalKey<EditableTextState> editableTextKey;

  /// iOS force-press selection; off to keep the sample minimal.
  @override
  bool get forcePressEnabled => false;

  /// Master switch the builder checks before starting any selection.
  @override
  bool get selectionEnabled => true;
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
          'Step 3: tap to place the cursor and type. Long-press selects '
          'a word, but the selection is still invisible: the highlight '
          'color arrives in the next step.',
    );
    final focusNode = useFocusNode();

    // The key connects the pieces: the builder receives it through the
    // delegate and calls editableTextKey.currentState to drive selection.
    final editableTextKey = useMemoized(GlobalKey<EditableTextState>.new);
    final gestureDetectorBuilder = useMemoized(
      () => TextSelectionGestureDetectorBuilder(
        delegate: _EditableTextSelectionDelegate(
          editableTextKey: editableTextKey,
        ),
      ),
    );

    return Padding(
      padding: const .all(16),
      // buildGestureDetector wraps the child in a TextSelectionGestureDetector
      // that recognizes tap / double-tap / long-press / drag and translates
      // them into platform-appropriate selection behavior.
      child: gestureDetectorBuilder.buildGestureDetector(
        behavior: HitTestBehavior.translucent,
        child: EditableText(
          key: editableTextKey,
          controller: controller,
          focusNode: focusNode,
          // All three below are required: without a material Theme nothing
          // supplies a default text style or cursor colors.
          style: const TextStyle(fontSize: 16, color: Color(0xFF000000)),
          cursorColor: const Color(0xFF000000),
          // Only used by iOS's floating cursor (force-press / spacebar
          // drag).
          backgroundCursorColor: const Color(0xFF808080),
          // Disable RenderEditable's built-in tap/long-press recognizers so
          // the surrounding TextSelectionGestureDetector is the only gesture
          // handler — otherwise both would process the same pointer events.
          // The same setup material's TextField uses.
          rendererIgnoresPointer: true,
        ),
      ),
    );
  }
}
