import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen demonstrating how [StackFit] changes the constraints a [Stack]
/// passes to its non-positioned children.
///
/// Each demo uses the same content — a small blue box (intrinsic size
/// 60x60) inside a fixed 140x140 frame — so the only variable is the
/// [StackFit] value (and, for `passthrough`, the parent's constraints).
class StackFitScreen extends StatelessWidget {
  const StackFitScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('StackFit')),
    child: SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        spacing: 24,
        children: [
          _Demo(
            title: 'loose (default)',
            description: 'Child gets loose constraints → shrinks to content.',
            fit: StackFit.loose,
          ),
          _Demo(
            title: 'expand',
            description: 'Child gets tight constraints → forced to fill.',
            fit: StackFit.expand,
          ),
          _Demo(
            title: 'passthrough + tight parent',
            description:
                "Stack's parent is tight (fixed 140x140) → behaves like "
                'expand.',
            fit: StackFit.passthrough,
          ),
          // The next two share a loose parent (Align). This is the only
          // setup where expand and passthrough differ: expand still fills,
          // passthrough follows the loose parent and shrinks.
          _Demo(
            title: 'expand + loose parent',
            description:
                "Stack's parent is loose (wrapped in Align), but expand "
                'ignores it and fills anyway.',
            fit: StackFit.expand,
            looseParent: true,
          ),
          _Demo(
            title: 'passthrough + loose parent',
            description:
                "Stack's parent is loose (wrapped in Align) → passes it "
                'through, so the child shrinks like loose.',
            fit: StackFit.passthrough,
            looseParent: true,
          ),
        ],
      ),
    ),
  );
}

/// A single labelled demo: a 140x140 frame containing a [Stack] with the
/// given [fit].
///
/// When [looseParent] is true the [Stack] is wrapped in an [Align], which
/// hands it loose constraints instead of the frame's tight ones. This is
/// what makes `passthrough` behave differently in the two passthrough cases.
class _Demo extends StatelessWidget {
  const _Demo({
    required this.title,
    required this.description,
    required this.fit,
    this.looseParent = false,
  });

  /// Short label shown above the frame.
  final String title;

  /// One-line explanation of the expected result.
  final String description;

  /// The [StackFit] applied to the demo [Stack].
  final StackFit fit;

  /// When true, wrap the [Stack] in an [Align] so it receives loose
  /// constraints from its parent rather than the frame's tight ones.
  final bool looseParent;

  @override
  Widget build(BuildContext context) {
    // Non-positioned child: its intrinsic size is 60x60, but `fit` decides
    // whether that size survives.
    final demoStack = Stack(
      fit: fit,
      children: const [
        ColoredBox(
          color: AppColors.blue1,
          child: SizedBox(width: 60, height: 60),
        ),
      ],
    );

    return Column(
      crossAxisAlignment: .start,
      spacing: 8,
      children: [
        Text(title),
        Text(description),
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.black1),
          ),
          child: SizedBox(
            width: 140,
            height: 140,
            child: looseParent ? Align(child: demoStack) : demoStack,
          ),
        ),
      ],
    );
  }
}
