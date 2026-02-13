import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_lab/data/platform/event_channel_names.dart';
import 'package:flutter_lab/data/platform/method_channel_names.dart';
import 'package:flutter_lab/data/platform/method_names.dart';
import 'package:flutter_lab/domain/location/location.dart';
import 'package:flutter_lab/domain/location/location_repository.dart';
import 'package:result_dart/result_dart.dart';

/// [LocationRepository] implementation that retrieves the device's GPS
/// location via the platform method channel.
class PlatformLocationRepository extends LocationRepository {
  static const _methodChannel = MethodChannel(MethodChannelNames.location);
  static const _eventChannel = EventChannel(EventChannelNames.locationUpdates);

  StreamController<Location>? _controller;
  StreamSubscription<dynamic>? _subscription;

  @override
  AsyncResult<Location> getLocation() async {
    final dto = await _methodChannel.invokeMapMethod<String, double>(
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

  @override
  Stream<Location> watchLocation() {
    if (_controller != null) {
      return _controller!.stream;
    }

    _controller = StreamController<Location>.broadcast(
      onCancel: _stopWatching,
    );

    _subscription = _eventChannel.receiveBroadcastStream().listen(
      _handleEvent,
      onError: _handleError,
    );

    _methodChannel.invokeMethod<void>(MethodNames.watchLocation);

    return _controller!.stream;
  }

  /// Parses a map event with `latitude` and `longitude` keys into a
  /// [Location] and adds it to the stream controller.
  void _handleEvent(dynamic event) {
    if (event is! Map) return;

    final latitude = event['latitude'];
    final longitude = event['longitude'];
    if (latitude is! double || longitude is! double) return;

    _controller?.add(
      Location(latitude: latitude, longitude: longitude),
    );
  }

  /// Forwards errors from the event channel to the stream controller.
  void _handleError(Object error) {
    _controller?.addError(error);
  }

  /// Cleans up the subscription and controller when all listeners cancel.
  void _stopWatching() {
    _subscription?.cancel();
    _subscription = null;
    _controller?.close();
    _controller = null;
  }
}
