import 'package:flutter_lab/domain/location/location.dart';
import 'package:flutter_lab/domain/location/location_repository.dart';
import 'package:result_dart/result_dart.dart';

class GetLocationUseCase {
  GetLocationUseCase({
    required LocationRepository locationRepository,
  }) : _locationRepository = locationRepository;

  final LocationRepository _locationRepository;

  AsyncResult<Location> call() async => _locationRepository.get();
}
