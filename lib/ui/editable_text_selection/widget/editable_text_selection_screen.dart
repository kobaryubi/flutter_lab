// Selection handle visuals only exist in the cupertino/material libraries;
// the imports are scoped to just those symbols as a deliberate exception to
// the widgets-only import rule.
import 'package:flutter/cupertino.dart'
    show cupertinoTextSelectionHandleControls;
import 'package:flutter/foundation.dart' show defaultTargetPlatform;
import 'package:flutter/material.dart'
    show AdaptiveTextSelectionToolbar, materialTextSelectionHandleControls;
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen demonstrating text selection on a raw [EditableText] without
/// material.
///
/// Step 6: context menu. [EditableText.contextMenuBuilder] shows the
/// Cut/Copy/Paste toolbar when the gesture wiring calls
/// [EditableTextState.showToolbar] (e.g. on long-press end).
/// [AdaptiveTextSelectionToolbar] switches the looks per platform by
/// itself, so no hand-rolled switch is needed here — unlike the handles.
///
/// Step 7: read-only. [EditableText.readOnly] keeps the text selectable
/// and copyable but rejects edits and never summons the keyboard; the
/// context menu drops Cut/Paste automatically.
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
  /// How the builder finds the [EditableTextState]: the same key must be
  /// passed as [EditableText.key] below.
  ///
  /// Owned by the delegate (created here, not injected) the same way
  /// material's TextField State does it; one delegate per field keeps the
  /// key unique even with multiple fields on screen.
  @override
  final editableTextKey = GlobalKey<EditableTextState>();

  /// iOS-only force-press (3D Touch) selection, mirroring material's
  /// TextField: pressing hard selects the word under the finger without the
  /// long-press delay.
  ///
  /// Only 3D Touch hardware (iPhone 6s–XS) ever fires it — elsewhere the
  /// recognizer never triggers — but gating per platform keeps it out of
  /// the gesture arena entirely on Android.
  @override
  bool get forcePressEnabled => defaultTargetPlatform == TargetPlatform.iOS;

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
          'Step 6: long-press to select a word — drag handles appear and '
          'the Cut/Copy/Paste menu pops up when the long-press ends.',
    );
    final focusNode = useFocusNode();

    // The delegate owns the GlobalKey that connects the pieces: the builder
    // calls editableTextKey.currentState to drive selection, and the same
    // key goes to EditableText.key below.
    final selectionDelegate = useMemoized(_EditableTextSelectionDelegate.new);
    final gestureDetectorBuilder = useMemoized(
      () => TextSelectionGestureDetectorBuilder(delegate: selectionDelegate),
    );
    final showSelectionHandles = useState(false);
    final readOnly = useState(false);

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

    /// Flips [EditableText.readOnly]; selection and copy keep working,
    /// but edits are rejected and the keyboard never shows.
    void handleReadOnlyToggle() {
      readOnly.value = !readOnly.value;
    }

    /// Builds the Cut/Copy/Paste menu from the button items
    /// [EditableTextState] computes (positioning included); the adaptive
    /// toolbar switches the looks per platform by itself.
    Widget buildContextMenu(
      BuildContext context,
      EditableTextState editableTextState,
    ) => AdaptiveTextSelectionToolbar.editableText(
      editableTextState: editableTextState,
    );

    return Padding(
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 16,
        children: [
          GestureDetector(
            onTap: handleReadOnlyToggle,
            child: Text(
              'readOnly: ${readOnly.value ? 'ON' : 'OFF'} (tap to toggle)',
              style: const TextStyle(fontSize: 16, color: Color(0xFF000000)),
            ),
          ),
          // buildGestureDetector wraps the child in a
          // TextSelectionGestureDetector that recognizes tap / double-tap /
          // long-press / drag and translates them into platform-appropriate
          // selection behavior.
          gestureDetectorBuilder.buildGestureDetector(
            behavior: HitTestBehavior.translucent,
            child: EditableText(
              key: selectionDelegate.editableTextKey,
              controller: controller,
              focusNode: focusNode,
              readOnly: readOnly.value,
              // All three below are required: without a material Theme
              // nothing supplies a default text style or cursor colors.
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
              contextMenuBuilder: buildContextMenu,
              // Disable RenderEditable's built-in tap/long-press recognizers
              // so the surrounding TextSelectionGestureDetector is the only
              // gesture handler — otherwise both would process the same
              // pointer events. The same setup material's TextField uses.
              rendererIgnoresPointer: true,
            ),
          ),
        ],
      ),
    );
  }
}
