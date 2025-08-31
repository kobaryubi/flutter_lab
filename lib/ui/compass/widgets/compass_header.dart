import 'package:flutter/widgets.dart';
import 'package:flutter_lab/l10n/app_localizations.dart';
import 'package:flutter_lab/ui/compass/view_models/compass_view_model.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';

class CompassHeader extends StatelessWidget {
  const CompassHeader({super.key, required this.viewModel});

  final CompassViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context);
    if (appLocalizations == null) {
      return const Center(child: Text('Localization not found'));
    }

    final user = viewModel.user;
    if (user == null) {
      return const SizedBox();
    }

    return Column(
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.asset(
                user.picture,
                width: Dimens.profilePictureSize,
                height: Dimens.profilePictureSize,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
