import 'package:flutter_lab/domain/models/booking/booking.dart';
import 'package:flutter_lab/utils/result.dart';
import 'package:share_plus/share_plus.dart';

typedef ShareFunction = Future<void> Function(String text);

class BookingShareUseCase {
  factory BookingShareUseCase.withSharePlus() =>
      BookingShareUseCase._((String text) async {
        await SharePlus.instance.share(ShareParams(text: text));
      });
  BookingShareUseCase._(this._share);

  final ShareFunction _share;

  Future<Result<void>> shareBooking(Booking booking) async {
    final text =
        'Trip to ${booking.destination.name}\n'
        'Activities:\n'
        '${booking.activity.map((a) => ' - ${a.name}').join('\n')}.';

    try {
      await _share(text);
      return const Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
