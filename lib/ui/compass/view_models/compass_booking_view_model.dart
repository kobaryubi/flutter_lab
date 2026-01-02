import 'package:flutter/widgets.dart';
import 'package:flutter_lab/data/repositories/booking/booking_repository.dart';
import 'package:flutter_lab/domain/models/booking/booking.dart';
import 'package:flutter_lab/domain/use_cases/booking/booking_share_use_case.dart';
import 'package:flutter_lab/utils/command.dart';
import 'package:flutter_lab/utils/result.dart';

class CompassBookingViewModel extends ChangeNotifier {
  CompassBookingViewModel({
    required BookingShareUseCase shareBookingUseCase,
    required BookingRepository bookingRepository,
  }) : _shareUseCase = shareBookingUseCase,
       _bookingRepository = bookingRepository {
    loadBooking = Command1(_load);
    shareBooking = Command0(() {
      final booking = _booking;
      if (booking == null) {
        return Future.value(Result.error(Exception()));
      }

      _shareUseCase.shareBooking(booking);
      return Future.value(const Result.ok(null));
    });
  }

  final BookingRepository _bookingRepository;

  Booking? _booking;
  Booking? get booking => _booking;

  final BookingShareUseCase _shareUseCase;

  late final Command1<void, int> loadBooking;
  late final Command0<void> shareBooking;

  Future<Result<void>> _load(int id) async {
    final result = await _bookingRepository.getBooking(id);
    switch (result) {
      case Ok<Booking>():
        _booking = result.value;
        notifyListeners();
      case Error<Booking>():
        break;
    }

    return result;
  }
}
