import 'package:flutter/widgets.dart';
import 'package:flutter_lab/data/repositories/booking/booking_repository.dart';
import 'package:flutter_lab/domain/models/booking/booking.dart';
import 'package:flutter_lab/utils/command.dart';
import 'package:flutter_lab/utils/result.dart';
import 'package:logging/logging.dart';

class CompassBookingViewModel extends ChangeNotifier {
  CompassBookingViewModel({required BookingRepository bookingRepository})
    : _bookingRepository = bookingRepository {
    loadBooking = Command1(_load);
  }

  final BookingRepository _bookingRepository;

  Booking? _booking;
  Booking? get booking => _booking;

  final _log = Logger('CompassBookingViewModel');

  late final Command1<void, int> loadBooking;

  Future<Result<void>> _load(int id) async {
    final result = await _bookingRepository.getBooking(id);
    switch (result) {
      case Ok<Booking>():
        _log.fine('Loaded booking $id');
        _booking = result.value;
        notifyListeners();
      case Error<Booking>():
        _log.warning('Failed to load booking $id');
    }

    return result;
  }
}
