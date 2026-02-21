import 'package:flutter_lab/domain/google_api/google_api_availability.dart';
import 'package:flutter_lab/domain/google_api/google_api_gateway.dart';
import 'package:flutter_lab/domain/google_api/google_play_services_status.dart';
import 'package:google_api_availability/google_api_availability.dart' as plugin;
import 'package:result_dart/result_dart.dart';

/// Converts plugin status to domain status.
GooglePlayServicesStatus _toStatus(
  plugin.GooglePlayServicesAvailability availability,
) => switch (availability) {
  plugin.GooglePlayServicesAvailability.success =>
    GooglePlayServicesStatus.success,
  plugin.GooglePlayServicesAvailability.serviceMissing =>
    GooglePlayServicesStatus.serviceMissing,
  plugin.GooglePlayServicesAvailability.serviceUpdating =>
    GooglePlayServicesStatus.serviceUpdating,
  plugin.GooglePlayServicesAvailability.serviceVersionUpdateRequired =>
    GooglePlayServicesStatus.serviceVersionUpdateRequired,
  plugin.GooglePlayServicesAvailability.serviceDisabled =>
    GooglePlayServicesStatus.serviceDisabled,
  plugin.GooglePlayServicesAvailability.serviceInvalid =>
    GooglePlayServicesStatus.serviceInvalid,
  plugin.GooglePlayServicesAvailability.notAvailableOnPlatform =>
    GooglePlayServicesStatus.notAvailableOnPlatform,
  _ => GooglePlayServicesStatus.unknown,
};

/// [GoogleApiGateway] implementation using the `google_api_availability`
/// package.
class PluginGoogleApiGateway implements GoogleApiGateway {
  @override
  AsyncResult<GoogleApiAvailability> checkAvailability() async {
    final availability = await plugin.GoogleApiAvailability.instance
        .checkGooglePlayServicesAvailability();
    final status = _toStatus(availability);
    return GoogleApiAvailability(status: status).toSuccess();
  }
}
