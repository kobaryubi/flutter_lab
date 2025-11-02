import 'package:flutter/services.dart';
import 'package:flutter_lab/data/platform/method_channel_names.dart';
import 'package:flutter_lab/domain/location/location.dart';
import 'package:flutter_lab/domain/location/location_repository.dart';
import 'package:result_dart/result_dart.dart';

class PlatformLocationRepository extends LocationRepository {
  static const platform = MethodChannel(MethodChannelNames.location);

  @override
  AsyncResult<Location> get() async {
    return const Location(latitude: 35, longitude: 135).toSuccess();
  }
}
