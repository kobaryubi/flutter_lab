import 'package:flutter_lab/domain/entity/permission/permission.dart';
import 'package:flutter_lab/domain/entity/permission/permission_status.dart';
import 'package:flutter_lab/domain/permission/permission_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Gets the current status of the given permission.
class GetPermissionStatusUseCase {
  GetPermissionStatusUseCase({
    required PermissionGateway permissionGateway,
  }) : _permissionGateway = permissionGateway;

  final PermissionGateway _permissionGateway;

  /// Returns the current status of the given [permission].
  AsyncResult<PermissionStatus> call({
    required Permission permission,
  }) => _permissionGateway.getPermissionStatus(permission: permission);
}
