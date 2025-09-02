import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/compass/view_models/compass_booking_view_model.dart';

class CompassBookingScreen extends StatefulWidget {
  const CompassBookingScreen({super.key, required this.viewModel});

  final CompassBookingViewModel viewModel;

  @override
  State<CompassBookingScreen> createState() => _CompassBookingScreenState();
}

class _CompassBookingScreenState extends State<CompassBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
