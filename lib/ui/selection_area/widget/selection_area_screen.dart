// SelectionArea is material-only; the import is scoped to just that widget
// as a deliberate exception to the widgets-only import rule.
import 'package:flutter/material.dart' show SelectionArea;
import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen demonstrating [SelectionArea], the material wrapper around
/// [SelectableRegion].
///
/// Compared to the raw [SelectableRegion] sample, [SelectionArea] supplies
/// everything that sample had to omit or hand-roll: platform-adaptive drag
/// handles, a Copy / Select all context menu, and the theme selection
/// highlight color.
class SelectionAreaScreen extends StatelessWidget {
  const SelectionAreaScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('SelectionArea')),
    child: _Body(),
  );
}

class _Body extends StatelessWidget {
  const _Body();

  /// Selection highlight mirroring MaterialApp's default:
  /// `colorScheme.primary` at 40% opacity.
  static final Color _selectionColor = AppColors.primary.withValues(
    alpha: 0.4,
  );

  @override
  Widget build(BuildContext context) => SelectionArea(
    child: DefaultSelectionStyle(
      // Without a material Theme ancestor the highlight falls back to
      // DefaultSelectionStyle.defaultColor (semi-transparent gray).
      selectionColor: _selectionColor,
      child: const Padding(
        padding: .all(16),
        child: Column(
          spacing: 16,
          crossAxisAlignment: .start,
          children: [
            Text(
              'Long-press to select: unlike the SelectableRegion sample, '
              'drag handles and a context menu appear.',
            ),
            Text(
              'First paragraph: SelectionArea is SelectableRegion plus '
              'platform-adaptive selection controls and theming.',
            ),
            Text(
              'Second paragraph: selection still continues across separate '
              'Text widgets, exactly like the raw SelectableRegion.',
            ),
          ],
        ),
      ),
    ),
  );
}
