import 'package:flutter_lab/domain/models/booking/booking.dart';
import 'package:flutter_lab/domain/models/booking/booking_summary.dart';
import 'package:flutter_lab/utils/result.dart';

abstract class BookingRepository {
  Future<Result<List<BookingSummary>>> getBookingsList();
  Future<Result<Booking>> getBooking(int id);
  Future<Result<void>> createBooking(Booking booking);
}
