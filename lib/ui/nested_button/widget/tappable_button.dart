import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/nested_button/hook/use_tapped.dart';

/// A button that changes its background color while pressed.
///
/// The pressed state comes from [useTapped], which flips on the
/// [GestureDetector]'s `onTapDown`. `onTapDown` fires for every detector whose
/// hit area contains the pointer — including ancestors — and it fires before
/// the gesture arena picks a winner. So when two of these buttons are nested,
/// pressing the inner one also turns the outer one to [pressedColor], and a
/// long press keeps the outer button in its pressed color until release.
class TappableButton extends HookWidget {
  const TappableButton({
    required this.onTap,
    required this.color,
    required this.pressedColor,
    required this.width,
    required this.height,
    super.key,
    this.child,
  });

  /// Called when this button wins the gesture arena on tap.
  final VoidCallback onTap;

  /// Background color while not pressed.
  final Color color;

  /// Background color while pressed.
  final Color pressedColor;

  /// Button width.
  final double width;

  /// Button height.
  final double height;

  /// Optional content centered inside the button.
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final tapped = useTapped();

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: tapped.onTapDown,
      onTapUp: tapped.onTapUp,
      onTapCancel: tapped.onTapCancel,
      onTap: onTap,
      child: ColoredBox(
        color: tapped.isTapped ? pressedColor : color,
        child: SizedBox(
          width: width,
          height: height,
          child: Center(child: child),
        ),
      ),
    );
  }
}
