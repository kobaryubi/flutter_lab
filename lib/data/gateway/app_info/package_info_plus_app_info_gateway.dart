import 'package:flutter_lab/domain/app_info/app_info_gateway.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// Implementation of [AppInfoGateway] backed by the `package_info_plus`
/// plugin.
class PackageInfoPlusAppInfoGateway implements AppInfoGateway {
  @override
  Future<String> getVersion() async {
    final info = await PackageInfo.fromPlatform();

    return info.version;
  }

  @override
  Future<String> getBuildNumber() async {
    final info = await PackageInfo.fromPlatform();

    return info.buildNumber;
  }
}
