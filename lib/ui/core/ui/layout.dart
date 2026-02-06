import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';

class Layout extends StatelessWidget {
  const Layout({
    required this.appBar,
    required this.child,
    this.bottomNavigationBar,
    super.key,
  });

  final Widget appBar;
  final Widget child;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) => ColoredBox(
    color: AppColors.primary,
    child: SafeArea(
      child: ColoredBox(
        color: AppColors.white1,
        child: Column(
          children: [
            appBar,
            Expanded(child: child),
            if (bottomNavigationBar != null) bottomNavigationBar!,
          ],
        ),
      ),
    ),
  );
}
