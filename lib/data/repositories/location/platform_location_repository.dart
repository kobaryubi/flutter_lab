import 'package:flutter/services.dart';
import 'package:flutter_lab/data/platform/method_channel_names.dart';
import 'package:flutter_lab/data/platform/method_names.dart';
import 'package:flutter_lab/domain/location/location.dart';
import 'package:flutter_lab/domain/location/location_repository.dart';
import 'package:result_dart/result_dart.dart';

/// [LocationRepository] implementation that retrieves the device's GPS
/// location via the platform method channel.
class PlatformLocationRepository extends LocationRepository {
  static const platform = MethodChannel(MethodChannelNames.location);

  @override
  AsyncResult<Location> getLocation() async {
    final dto = await platform.invokeMapMethod<String, double>(
      MethodNames.getLocation,
    );
    if (dto == null) {
      return Exception().toFailure();
    }

    final latitude = dto['latitude'];
    final longitude = dto['longitude'];
    if (latitude == null || longitude == null) {
      return Exception().toFailure();
    }

    return Location(latitude: latitude, longitude: longitude).toSuccess();
  }
}
