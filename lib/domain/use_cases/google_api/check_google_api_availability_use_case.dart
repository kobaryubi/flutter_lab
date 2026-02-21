import 'package:flutter_lab/domain/google_api/google_api_availability.dart';
import 'package:flutter_lab/domain/google_api/google_api_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case for checking Google Play Services availability.
class CheckGoogleApiAvailabilityUseCase {
  CheckGoogleApiAvailabilityUseCase({
    required GoogleApiGateway googleApiGateway,
  }) : _googleApiGateway = googleApiGateway;

  final GoogleApiGateway _googleApiGateway;

  /// Returns the Google Play Services availability status.
  AsyncResult<GoogleApiAvailability> call() async =>
      _googleApiGateway.checkAvailability();
}
