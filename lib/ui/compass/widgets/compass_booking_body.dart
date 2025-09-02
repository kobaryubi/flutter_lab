import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/compass/view_models/compass_booking_view_model.dart';
import 'package:flutter_lab/ui/compass/widgets/compass_booking_header.dart';

class CompassBookingBody extends StatelessWidget {
  const CompassBookingBody({required this.viewModel, super.key});

  final CompassBookingViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, _) {
        final booking = viewModel.booking;
        if (booking == null) return const SizedBox();

        return const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CompassBookingHeader(booking: booking)),
          ],
        );
      },
    );
  }
}
