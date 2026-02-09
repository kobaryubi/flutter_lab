import 'package:flutter_lab/domain/entity/permission/permission.dart';
import 'package:flutter_lab/domain/entity/permission/permission_status.dart';
import 'package:result_dart/result_dart.dart';

/// Gateway interface for checking and requesting app permissions.
abstract class PermissionGateway {
  /// Gets the current status of the given permission.
  AsyncResult<PermissionStatus> getPermissionStatus({
    required Permission permission,
  });

  /// Requests a single permission and returns its new status.
  AsyncResult<PermissionStatus> requestPermission({
    required Permission permission,
  });

  /// Opens the app settings page so the user can change permissions.
  AsyncResult<bool> openAppSettings();
}
