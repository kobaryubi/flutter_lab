import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen that demonstrates a responsive vertical layout where a single
/// content block is flanked by top and bottom spacing.
///
/// Layout rules per case:
/// - Top and bottom spacing each have a minimum height of 40.
/// - The content has a preferred height. When the available height has
///   room, the spacing grows beyond 40 and the content stays at its
///   preferred height.
/// - When the available height drops below `preferredContentHeight + 80`,
///   the spacing locks at 40 and the content shrinks instead.
///
/// Multiple cases are shown side-by-side, each constrained to a different
/// available height, so the three resulting states (plenty of room /
/// threshold / tight) are visible at once.
class MarkupSampleScreen extends StatelessWidget {
  const MarkupSampleScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Markup Sample')),
    child: ColoredBox(
      color: Color(0xFF000000),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          spacing: 8,
          crossAxisAlignment: .start,
          children: [
            Expanded(
              child: SizedBox(height: 400, child: _ResponsiveCase()),
            ),
            Expanded(
              child: SizedBox(height: 240, child: _ResponsiveCase()),
            ),
            Expanded(
              child: SizedBox(height: 200, child: _ResponsiveCase()),
            ),
            Expanded(
              child: SizedBox(height: 160, child: _ResponsiveCase()),
            ),
            Expanded(
              child: SizedBox(height: 120, child: _ResponsiveCase()),
            ),
          ],
        ),
      ),
    ),
  );
}

/// A single case: a column of `[top spacing] + [content] + [bottom spacing]`
/// where the spacings keep a minimum height of 40 and the content shrinks
/// once the available height forces both spacings to that minimum.
///
/// The content itself is a green `Column` of `[top text] + [flexible body]
/// + [bottom text]`. The two texts take their intrinsic height; the body
/// is a 1:1 white square that fills whatever vertical space remains
/// between them (and never wider than its column width).
///
/// Implementation:
/// - Two `SizedBox(height: 40)` reserve the minimum top and bottom spacing.
/// - `Flexible` (loose fit) lets the content take the remaining height,
///   while the inner `AspectRatio(1)` enforces the square shape on the
///   flexible body.
/// - `mainAxisAlignment: .spaceBetween` distributes any leftover height
///   (when the content fits and there is still room) as equal gaps above
///   and below the content.
class _ResponsiveCase extends StatelessWidget {
  const _ResponsiveCase();

  @override
  Widget build(BuildContext context) => const ColoredBox(
    color: Color(0xFFFFFFFF),
    child: Column(
      mainAxisAlignment: .spaceBetween,
      children: [
        SizedBox(height: 40),
        Flexible(
          child: ColoredBox(
            color: Color(0xFF4CAF50),
            child: Column(
              mainAxisSize: .min,
              children: [
                Text('top'),
                Flexible(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ColoredBox(color: Color(0xFFFFFFFF)),
                  ),
                ),
                Text('bottom'),
              ],
            ),
          ),
        ),
        SizedBox(height: 40),
      ],
    ),
  );
}
