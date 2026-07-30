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
  ///
  /// A mutable field (not a getter) so the widget can flip it off while
  /// the field is disabled — the same way material's TextField feeds
  /// `widget.enabled` into its delegate.
  @override
  bool selectionEnabled = true;
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
    final disabled = useState(false);

    // Closes the focus channel while disabled, as material's TextField
    // does: no tap or Tab traversal can focus the field, and the setter
    // actively unfocuses an already-focused node (dismissing the keyboard
    // and, via the focus listener, any open selection overlay).
    focusNode.canRequestFocus = !disabled.value;

    // Stops the gesture builder from starting new selections while
    // disabled (TextField: `widget.selectionEnabled && _isEnabled`).
    // Belt and braces once the pointer level is blocked too, but keeps
    // the delegate truthful whichever layer a gesture reaches.
    selectionDelegate.selectionEnabled = !disabled.value;

    // No framework part switches handle visuals automatically;
    // SelectionArea, TextField, and this sample all hand-roll the same
    // platform switch. iOS/Android only, per project scope.
    final selectionControls = switch (defaultTargetPlatform) {
      TargetPlatform.iOS => cupertinoTextSelectionHandleControls,
      _ => materialTextSelectionHandleControls,
    };

    /// Decides whether the drag handles should be visible for the selection
    /// change that just happened, replicating material TextField's
    /// `_shouldShowSelectionHandles` decision order in full — only the
    /// stylus-handwriting case is omitted, as this sample never enables it.
    bool shouldShowSelectionHandles(SelectionChangedCause? cause) {
      // The overlay belongs to touchscreen interaction only. The builder
      // records the PointerDeviceKind (finger/stylus vs mouse) at gesture
      // start — information the cause can't carry: a mouse drag and a
      // finger drag both arrive here as `cause == drag`.
      if (!gestureDetectorBuilder.shouldShowSelectionToolbar ||
          !gestureDetectorBuilder.shouldShowSelectionHandles) {
        return false;
      }

      // Hardware-keyboard selection (shift + arrows) is not a gesture; the
      // flags above still hold the previous gesture's value, so the cause
      // must rule it out explicitly.
      if (cause == SelectionChangedCause.keyboard) {
        return false;
      }

      // Read-only still allows select-and-copy, so ranged selections keep
      // their handles; a collapsed caret can't be edited there, making its
      // (Android) teardrop handle pointless.
      if (readOnly.value && controller.selection.isCollapsed) {
        return false;
      }

      // A disabled field never shows handles, whatever path changed the
      // selection (material: `if (!_isEnabled) return false;`).
      if (disabled.value) {
        return false;
      }

      // A long-press shows handles even in an empty field.
      if (cause == SelectionChangedCause.longPress) {
        return true;
      }

      // Every other gesture that passed the gate (double-tap, force-press,
      // tap's collapsed caret handle on Android) shows handles as long as
      // there is text to handle.
      if (controller.text.isNotEmpty) {
        return true;
      }

      return false;
    }

    /// Logs every selection change and syncs handle visibility through
    /// [shouldShowSelectionHandles], the same split material's TextField
    /// uses in `_handleSelectionChanged`.
    void handleSelectionChanged(
      TextSelection selection,
      SelectionChangedCause? cause,
    ) {
      logger.debug(
        'selection changed: ${selection.start}-${selection.end} '
        'cause=${cause?.name}',
      );

      final willShowHandles = shouldShowSelectionHandles(cause);

      if (willShowHandles == showSelectionHandles.value) return;

      showSelectionHandles.value = willShowHandles;
    }

    /// Flips [EditableText.readOnly]; selection and copy keep working,
    /// but edits are rejected and the keyboard never shows.
    void handleReadOnlyToggle() {
      readOnly.value = !readOnly.value;
    }

    /// Flips the disabled state; the wiring that makes the field inert is
    /// added piece by piece in the following steps.
    void handleDisabledToggle() {
      disabled.value = !disabled.value;
    }

    /// Builds the context menu the way material's TextField default does:
    /// the OS-rendered menu (iOS 16+; paste without the permission prompt,
    /// Look Up, etc.) when the field supports it, otherwise the
    /// Flutter-rendered adaptive toolbar.
    ///
    /// [SystemContextMenu.isSupportedByField] needs an active input
    /// connection, so read-only (and therefore disabled) states fall back
    /// to the Flutter toolbar automatically.
    Widget buildContextMenu(
      BuildContext context,
      EditableTextState editableTextState,
    ) {
      if (SystemContextMenu.isSupportedByField(editableTextState)) {
        return SystemContextMenu.editableText(
          editableTextState: editableTextState,
        );
      }

      return AdaptiveTextSelectionToolbar.editableText(
        editableTextState: editableTextState,
      );
    }

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
          GestureDetector(
            onTap: handleDisabledToggle,
            child: Text(
              'disabled: ${disabled.value ? 'ON' : 'OFF'} (tap to toggle)',
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
              // A disabled field must also be read-only so the IME editing
              // channel is closed — mirrors material's TextField
              // (readOnly: widget.readOnly || !_isEnabled).
              readOnly: readOnly.value || disabled.value,
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
