import 'package:flutter_lab/domain/google_api/google_api_availability.dart';
import 'package:result_dart/result_dart.dart';

/// Gateway interface for checking Google Play Services availability.
abstract class GoogleApiGateway {
  /// Returns the Google Play Services availability status.
  AsyncResult<GoogleApiAvailability> checkAvailability();
}
