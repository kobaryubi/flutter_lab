import 'package:flutter_lab/data/repositories/booking/booking_repository.dart';
import 'package:logging/logging.dart';

class BookingCreateUseCase {
  BookingCreateUseCase({required BookingRepository bookingRepository})
    : _bookingRepository = bookingRepository;

  final BookingRepository _bookingRepository;
  final _log = Logger('BookingCreateUseCase');
}
