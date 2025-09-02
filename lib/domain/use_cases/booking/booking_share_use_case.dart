import 'package:flutter_lab/domain/models/booking/booking.dart';
import 'package:flutter_lab/utils/result.dart';
import 'package:logging/logging.dart';

typedef ShareFunction = Future<void> Function(String text);

class BookingShareUseCase {
  BookingShareUseCase._(this._share);

  final _log = Logger('BookingShareUseCase');
  final ShareFunction _share;

  Future<Result<void>> shareBooking(Booking booking) async {
    final text =
        'Trip to ${booking.destination.name}\n'
        'Activities:\n'
        '${booking.activity.map((a) => ' - ${a.name}').join('\n')}.';

    _log.info('Sharing booking: $text');

    try {
      await _share(text);
      _log.fine('Shared booking');
      return const Result.ok(null);
    } on Exception catch (error) {
      _log.severe('Failed to share booking', error);
      return Result.error(error);
    }
  }
}
