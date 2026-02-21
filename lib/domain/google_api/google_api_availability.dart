import 'package:flutter_lab/domain/google_api/google_play_services_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_api_availability.freezed.dart';

/// Entity representing Google Play Services availability status.
@freezed
abstract class GoogleApiAvailability with _$GoogleApiAvailability {
  const factory GoogleApiAvailability({
    required GooglePlayServicesStatus status,
  }) = _GoogleApiAvailability;

  const GoogleApiAvailability._();

  /// Whether Google Play Services are available and up-to-date.
  bool get isAvailable => status == GooglePlayServicesStatus.success;
}
