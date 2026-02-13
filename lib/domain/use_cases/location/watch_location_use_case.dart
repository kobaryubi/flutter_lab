import 'package:flutter_lab/domain/location/location.dart';
import 'package:flutter_lab/domain/location/location_repository.dart';

/// Provides a continuous stream of location updates.
class WatchLocationUseCase {
  WatchLocationUseCase({
    required LocationRepository locationRepository,
  }) : _locationRepository = locationRepository;

  final LocationRepository _locationRepository;

  /// Returns a stream that emits a new location on each update.
  Stream<Location> call() => _locationRepository.watchLocation();
}
