import 'package:flutter_lab/domain/location/location.dart';
import 'package:result_dart/result_dart.dart';

// repository pattern
// ignore: one_member_abstracts
abstract class LocationRepository {
  AsyncResult<Location> get();
}
