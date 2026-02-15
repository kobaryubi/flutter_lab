import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

/// Displays a native map view centered on the given coordinates.
///
/// On iOS, embeds an `MKMapView` via `UiKitView`.
/// On Android, embeds a `TextView` placeholder via `AndroidView`.
class Map extends StatelessWidget {
  /// Creates a [Map] centered on the given [latitude] and [longitude].
  const Map({
    required this.latitude,
    required this.longitude,
    super.key,
  });

  static const _viewType = 'map';

  /// The latitude to center the map on.
  final double latitude;

  /// The longitude to center the map on.
  final double longitude;

  @override
  Widget build(BuildContext context) {
    final creationParams = <String, double>{
      'latitude': latitude,
      'longitude': longitude,
    };
    const codec = StandardMessageCodec();

    if (Platform.isIOS) {
      return UiKitView(
        viewType: _viewType,
        creationParams: creationParams,
        creationParamsCodec: codec,
      );
    }

    return AndroidView(
      viewType: _viewType,
      creationParams: creationParams,
      creationParamsCodec: codec,
    );
  }
}
