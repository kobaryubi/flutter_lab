import 'package:flutter/widgets.dart';
import 'package:flutter_lab/gen/assets.gen.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';
import 'package:go_router/go_router.dart';

class AppLink {
  const AppLink({required this.title, required this.route, this.key});
  final String title;
  final GoRouteData route;

  /// Optional key forwarded to the rendered [LauncherRow] so tests can
  /// locate the link without depending on its visible text.
  final Key? key;
}

class LauncherRow extends StatelessWidget {
  const LauncherRow({required this.title, required this.onTap, super.key});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Semantics(
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
