import 'package:flutter_lab/domain/app_store/app_store_repository.dart';
import 'package:flutter_lab/domain/entity/app_store/target_platform_type.dart';

/// [AppStoreRepository] implementation that resolves the app store URL
/// based on the target platform.
class PlatformAppStoreRepository implements AppStoreRepository {
  PlatformAppStoreRepository({
    required TargetPlatformType targetPlatformType,
    required String appId,
    required String packageName,
  }) : _targetPlatformType = targetPlatformType,
       _appId = appId,
       _packageName = packageName;

  final TargetPlatformType _targetPlatformType;
  final String _appId;
  final String _packageName;

  @override
  Uri getUrl() => switch (_targetPlatformType) {
    .iOS => Uri.parse(
      'https://apps.apple.com/app/id$_appId',
    ),
    .android => Uri.parse(
      'https://play.google.com/store/apps/details?id=$_packageName',
    ),
  };
}
