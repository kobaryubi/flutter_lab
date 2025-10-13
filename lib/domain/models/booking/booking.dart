import 'package:flutter_lab/domain/models/activity/activity.dart';
import 'package:flutter_lab/domain/models/destination/destination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

@freezed
abstract class Booking with _$Booking {
  const factory Booking({
    required DateTime startDate,
    required DateTime endDate,
    required Destination destination,
    required List<Activity> activity,
    int? id,
  }) = _Booking;

  factory Booking.fromJson(Map<String, Object?> json) =>
      _$BookingFromJson(json);
}
