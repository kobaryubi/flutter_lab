import 'package:flutter_lab/domain/permission/permission_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Opens the platform app settings so the user can change permissions.
class OpenAppSettingsUseCase {
  OpenAppSettingsUseCase({
    required PermissionGateway permissionGateway,
  }) : _permissionGateway = permissionGateway;

  final PermissionGateway _permissionGateway;

  /// Opens the app settings page. Returns `true` if successful.
  AsyncResult<bool> call() => _permissionGateway.openAppSettings();
}
