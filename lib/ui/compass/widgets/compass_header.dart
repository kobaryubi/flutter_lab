import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/compass/view_models/compass_view_model.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';

class CompassHeader extends StatelessWidget {
  const CompassHeader({required this.viewModel, super.key});

  final CompassViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final user = viewModel.user;
    if (user == null) {
      return const SizedBox();
    }

    return ClipOval(
      child: Image.asset(
        user.picture,
        width: Dimens.profilePictureSize,
        height: Dimens.profilePictureSize,
      ),
    );
  }
}
