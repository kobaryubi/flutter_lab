import 'package:flutter_lab/domain/location/location.dart';
import 'package:flutter_lab/domain/location/location_repository.dart';
import 'package:result_dart/result_dart.dart';

class GpsLocationRepository extends LocationRepository {
  @override
  AsyncResult<Location> get() async {
    return const Location(latitude: 35, longitude: 135).toSuccess();
  }
}
