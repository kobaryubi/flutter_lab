import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:go_router/go_router.dart';

/// Shows a modal dialog that lets the user edit the value for [storageKey].
///
/// Resolves to the edited string when the user taps "save", or `null` when
/// they tap "cancel" / dismiss. Styling is intentionally minimal — this is
/// debug tooling, not a user-facing feature.
Future<String?> showDebugEditDialog({
  required BuildContext context,
  required String storageKey,
  required String initialValue,
}) => showGeneralDialog<String>(
  context: context,
  pageBuilder: (context, _, _) =>
      _DebugEditDialog(storageKey: storageKey, initialValue: initialValue),
);

class _DebugEditDialog extends HookWidget {
  const _DebugEditDialog({
    required this.storageKey,
    required this.initialValue,
  });

  final String storageKey;
  final String initialValue;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: initialValue);
    final focusNode = useFocusNode();

    /// Pops the dialog with the current text field value.
    void handleSave() {
      context.pop(controller.text);
    }

    /// Dismisses the dialog without returning a value.
    void handleCancel() {
      context.pop();
    }

    return Center(
      child: ColoredBox(
        color: const Color(0xFFFFFFFF),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: .min,
            crossAxisAlignment: .start,
            spacing: 12,
            children: [
              Text(storageKey),
              SizedBox(
                width: 280,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFCCCCCC)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 6,
                    ),
                    child: EditableText(
                      controller: controller,
                      focusNode: focusNode,
                      style: const TextStyle(color: Color(0xFF000000)),
                      cursorColor: const Color(0xFF000000),
                      backgroundCursorColor: const Color(0xFFCCCCCC),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: .end,
                spacing: 8,
                children: [
                  Button(label: 'cancel', onTap: handleCancel),
                  Button(label: 'save', onTap: handleSave),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
