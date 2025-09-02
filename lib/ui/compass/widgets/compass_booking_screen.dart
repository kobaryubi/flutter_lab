import 'package:flutter/widgets.dart';
import 'package:flutter_lab/gen/assets.gen.dart';
import 'package:flutter_lab/l10n/app_localizations.dart';
import 'package:flutter_lab/ui/compass/view_models/compass_booking_view_model.dart';
import 'package:flutter_lab/ui/core/ui/floating_action_button.dart';
import 'package:flutter_lab/ui/core/ui/scaffold.dart';

class CompassBookingScreen extends StatefulWidget {
  const CompassBookingScreen({super.key, required this.viewModel});

  final CompassBookingViewModel viewModel;

  @override
  State<CompassBookingScreen> createState() => _CompassBookingScreenState();
}

class _CompassBookingScreenState extends State<CompassBookingScreen> {
  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context);
    if (appLocalizations == null) {
      return const SizedBox();
    }

    return Scaffold(
      body: Container(),
      floatingActionButton: ListenableBuilder(
        listenable: widget.viewModel,
        builder: (context, _) => FloatingActionButton(
          onPressed: () {},
          label: Text(appLocalizations.shareTrip),
          icon: Assets.icons.share,
        ),
      ),
    );
  }
}
