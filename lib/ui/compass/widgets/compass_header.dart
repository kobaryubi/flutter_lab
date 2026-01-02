import 'package:flutter/widgets.dart';
import 'package:flutter_lab/l10n/app_localizations.dart';
import 'package:flutter_lab/ui/compass/view_models/compass_view_model.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class CompassHeader extends StatelessWidget {
  const CompassHeader({required this.viewModel, super.key});

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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ClipOval(
          child: Image.asset(
            user.picture,
            width: Dimens.profilePictureSize,
            height: Dimens.profilePictureSize,
          ),
        ),
        const SizedBox(height: Dimens.paddingVertical),
        _Title(text: appLocalizations.nameTrips(user.name)),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) => const RadialGradient(
        center: Alignment.bottomLeft,
        radius: 2,
        colors: [Color(0xFF7B1FA2), Color(0xFFAB47BC)],
      ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      child: Text(
        text,
        style: GoogleFonts.rubik(textStyle: TextStyles.headlineLarge),
      ),
    );
  }
}
