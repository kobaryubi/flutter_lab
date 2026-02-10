import 'package:flutter_lab/domain/entity/permission/permission.dart';
import 'package:flutter_lab/domain/entity/permission/permission_status.dart';
import 'package:flutter_lab/domain/permission/permission_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Requests a single app permission from the user.
class RequestPermissionUseCase {
  RequestPermissionUseCase({
    required PermissionGateway permissionGateway,
  }) : _permissionGateway = permissionGateway;

  final PermissionGateway _permissionGateway;

  /// Requests the given [permission] and returns its new status.
  AsyncResult<PermissionStatus> call({
    required Permission permission,
  }) => _permissionGateway.requestPermission(permission: permission);
}
