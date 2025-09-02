import 'package:flutter/widgets.dart';
import 'package:flutter_lab/domain/models/booking/booking.dart';

class CompassBookingHeader extends StatelessWidget {
  const CompassBookingHeader({required this.booking, super.key});

  final Booking booking;

  @override
  Widget build(BuildContext context) {
    return Column(children: [_Top(booking: booking)]);
  }
}

class _Top extends StatelessWidget {
  const _Top({required this.booking});

  final Booking booking;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: Stack(children: [_HeaderImage(booking: booking)]),
    );
  }
}

class _HeaderImage extends StatelessWidget {
  const _HeaderImage({required this.booking});

  final Booking booking;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
