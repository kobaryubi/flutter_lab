import 'package:flutter_lab/domain/location/location.dart';
import 'package:result_dart/result_dart.dart';

abstract class LocationRepository {
  AsyncResult<Location> getLocation();
}
