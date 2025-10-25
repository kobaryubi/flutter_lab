import 'package:flutter/widgets.dart';
import 'package:flutter_lab/gen/assets.gen.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';

class AppLink {
  const AppLink({required this.title, required this.onTap});
  final String title;
  final VoidCallback onTap;
}

class LauncherRow extends StatelessWidget {
  const LauncherRow({required this.title, required this.onTap, super.key});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      link: true,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(Dimens.padding),
          child: Row(
            children: [
              Expanded(child: Text(title)),
              Assets.icons.arrowForward.svg(
                width: Dimens.iconWidth,
                height: Dimens.iconHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
