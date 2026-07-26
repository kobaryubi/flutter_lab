import 'package:flutter/widgets.dart';
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

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) => SelectableRegion(
    // Selection handles/toolbars are platform-specific (material/cupertino);
    // widgets-only imports leave no controls, so selection is handle-less.
    selectionControls: emptyTextSelectionControls,
    child: const DefaultSelectionStyle(
      // Without a material Theme there is no default selection color,
      // making the selection highlight invisible.
      selectionColor: Color(0x6633B5E5),
      child: Padding(
        padding: .all(16),
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
          ],
        ),
      ),
    ),
  );
}
