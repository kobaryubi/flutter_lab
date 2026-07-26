import 'package:flutter/rendering.dart' show SelectedContent;
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen demonstrating [SelectableRegion].
///
/// [SelectableRegion] makes its entire subtree selectable, so a single
/// long-press drag can select text continuously across multiple separate
/// [Text] widgets — something individual selectable texts cannot do.
class SelectableRegionScreen extends StatelessWidget {
  const SelectableRegionScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('SelectableRegion')),
    child: _Body(),
  );
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final selectedText = useState('');

    /// Stores the selected plain text so it can be displayed below the
    /// region. Called with `null` when the selection is cleared.
    void handleSelectionChanged(SelectedContent? content) {
      selectedText.value = content?.plainText ?? '';
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 16,
        crossAxisAlignment: .start,
        children: [
          SelectableRegion(
            // Selection handles/toolbars are platform-specific
            // (material/cupertino); widgets-only imports leave no controls,
            // so selection is handle-less.
            selectionControls: emptyTextSelectionControls,
            onSelectionChanged: handleSelectionChanged,
            child: const DefaultSelectionStyle(
              // Without a material Theme there is no default selection color,
              // making the selection highlight invisible.
              selectionColor: Color(0x6633B5E5),
              child: Column(
                spacing: 16,
                crossAxisAlignment: .start,
                children: [
                  Text('Long-press and drag to select text.'),
                  Text(
                    'First paragraph: SelectableRegion wraps a whole subtree '
                    'and makes every text descendant selectable.',
                  ),
                  Text(
                    'Second paragraph: notice the selection continues across '
                    'separate Text widgets as you keep dragging.',
                  ),

                  // Subtrees wrapped in SelectionContainer.disabled are
                  // skipped by the surrounding SelectableRegion.
                  SelectionContainer.disabled(
                    child: Text(
                      'Excluded paragraph: this text is inside '
                      'SelectionContainer.disabled and cannot be selected.',
                    ),
                  ),

                  Text(
                    'Third paragraph: dragging over the excluded part jumps '
                    'straight here and the selection continues.',
                  ),
                ],
              ),
            ),
          ),

          // Outside the SelectableRegion, so the status line itself is not
          // selectable.
          Text('Selected: ${selectedText.value}'),
        ],
      ),
    );
  }
}
