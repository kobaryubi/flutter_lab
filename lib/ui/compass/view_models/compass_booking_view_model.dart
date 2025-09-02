import 'package:flutter/widgets.dart';
import 'package:flutter_lab/domain/models/booking/booking.dart';
import 'package:logging/logging.dart';

class CompassBookingViewModel extends ChangeNotifier {
  Booking? _booking;
  Booking? get booking => _booking;

  final _log = Logger('CompassBookingViewModel');
}
