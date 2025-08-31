import 'package:flutter/widgets.dart';
import 'package:flutter_lab/l10n/app_localizations.dart';
import 'package:flutter_lab/ui/auth/logout/logout_view_model.dart';
import 'package:flutter_lab/ui/auth/logout/widgets/logout_button.dart';
import 'package:flutter_lab/ui/compass/view_models/compass_view_model.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';
import 'package:provider/provider.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipOval(
              child: Image.asset(
                user.picture,
                width: Dimens.profilePictureSize,
                height: Dimens.profilePictureSize,
              ),
            ),
            LogoutButton(
              viewModel: LogoutViewModel(
                authRepository: context.read(),
                itineraryConfigRepository: context.read(),
              ),
            ),
          ],
        ),
        const SizedBox(height: Dimens.paddingVertical),
      ],
    );
  }
}
