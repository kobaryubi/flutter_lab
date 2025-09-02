import 'package:flutter/widgets.dart';
import 'package:flutter_lab/gen/assets.gen.dart';
import 'package:flutter_lab/l10n/app_localizations.dart';
import 'package:flutter_lab/ui/compass/view_models/compass_booking_view_model.dart';
import 'package:flutter_lab/ui/compass/widgets/compass_booking_body.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/floating_action_button.dart';
import 'package:flutter_lab/ui/core/ui/scaffold.dart';

class CompassBookingScreen extends StatefulWidget {
  const CompassBookingScreen({required this.viewModel, super.key});

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
      appBar: const AppBar(title: Text('Compass Booking')),
      body: ListenableBuilder(
        listenable: widget.viewModel.loadBooking,
        builder: (context, child) {
          if (child == null) {
            return const SizedBox();
          }

          return child;
        },
        child: CompassBookingBody(viewModel: widget.viewModel),
      ),
      floatingActionButton: ListenableBuilder(
        listenable: widget.viewModel,
        builder: (context, _) => FloatingActionButton(
          onPressed: widget.viewModel.booking != null
              ? widget.viewModel.shareBooking.execute
              : null,
          label: Text(appLocalizations.shareTrip),
          icon: Assets.icons.share,
        ),
      ),
    );
  }
}
