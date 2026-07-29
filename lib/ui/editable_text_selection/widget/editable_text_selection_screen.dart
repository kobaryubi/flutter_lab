// Selection handle visuals only exist in the cupertino/material libraries;
// the imports are scoped to just those symbols as a deliberate exception to
// the widgets-only import rule.
import 'package:flutter/cupertino.dart'
    show cupertinoTextSelectionHandleControls;
import 'package:flutter/foundation.dart' show defaultTargetPlatform;
import 'package:flutter/material.dart' show materialTextSelectionHandleControls;
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen demonstrating text selection on a raw [EditableText] without
/// material.
///
/// Step 5: drag handles. [EditableText.selectionControls] supplies the
/// handle visuals — picked per platform the same way SelectionArea does it,
/// since no framework part switches them automatically. Handle visibility
/// mirrors material's TextField: shown only for touch-driven selections.
/// The context menu is still missing.
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

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logger = ref.read(loggerGatewayProvider);
    // The controller owns the text and the current TextSelection;
    // the focus node decides when the field talks to the keyboard.
    // Both are cached by hooks so rebuilds reuse the same instances.
    final controller = useTextEditingController(
      text:
          'Step 5: long-press to select a word — drag handles now appear '
          'and can extend the selection. The Copy/Paste menu is still '
          'missing.',
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
    final showSelectionHandles = useState(false);

    // No framework part switches handle visuals automatically;
    // SelectionArea, TextField, and this sample all hand-roll the same
    // platform switch. iOS/Android only, per project scope.
    final selectionControls = switch (defaultTargetPlatform) {
      TargetPlatform.iOS => cupertinoTextSelectionHandleControls,
      _ => materialTextSelectionHandleControls,
    };

    /// Shows drag handles only for touch-driven selection changes
    /// (long-press / drag), mirroring material's TextField, so keyboard
    /// selection stays handle-less.
    void handleSelectionChanged(
      TextSelection selection,
      SelectionChangedCause? cause,
    ) {
      logger.debug(
        'selection changed: ${selection.start}-${selection.end} '
        'cause=${cause?.name}',
      );

      final willShowHandles =
          cause == SelectionChangedCause.longPress ||
          cause == SelectionChangedCause.drag;

      if (willShowHandles == showSelectionHandles.value) return;

      showSelectionHandles.value = willShowHandles;
    }

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
          // Without a material Theme there is no default selection color;
          // leaving this null keeps the highlight invisible.
          selectionColor: const Color(0x6633B5E5),
          selectionControls: selectionControls,
          showSelectionHandles: showSelectionHandles.value,
          onSelectionChanged: handleSelectionChanged,
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
