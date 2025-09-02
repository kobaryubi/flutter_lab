import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';

class CompassHomeButton extends StatelessWidget {
  const CompassHomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimens.actionSize,
      width: Dimens.actionSize,
      child: Stack(fit: StackFit.expand, children: [Container()]),
    );
  }
}
