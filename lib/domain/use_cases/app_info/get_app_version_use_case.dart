import 'package:flutter_lab/domain/app_info/app_info_gateway.dart';

/// Use case that returns the app version as `"<version>+<buildNumber>"`.
class GetAppVersionUseCase {
  GetAppVersionUseCase({required AppInfoGateway appInfoGateway})
    : _appInfoGateway = appInfoGateway;

  final AppInfoGateway _appInfoGateway;

  /// Returns a display string combining version and build number.
  Future<String> call() async {
    final version = await _appInfoGateway.getVersion();
    final buildNumber = await _appInfoGateway.getBuildNumber();

    return '$version+$buildNumber';
  }
}
