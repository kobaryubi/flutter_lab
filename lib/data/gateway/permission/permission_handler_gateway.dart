import 'package:flutter_lab/domain/entity/permission/permission.dart';
import 'package:flutter_lab/domain/entity/permission/permission_status.dart';
import 'package:flutter_lab/domain/permission/permission_gateway.dart';
import 'package:permission_handler/permission_handler.dart' as ph;
import 'package:result_dart/result_dart.dart';

/// Maps domain [Permission] values to `permission_handler` [ph.Permission].
const _permissionMap = <Permission, ph.Permission>{
  .camera: ph.Permission.camera,
  .location: ph.Permission.location,
  .locationAlways: ph.Permission.locationAlways,
  .notification: ph.Permission.notification,
  .appTrackingTransparency: ph.Permission.appTrackingTransparency,
};

/// [PermissionGateway] implementation using the `permission_handler` package.
class PermissionHandlerGateway implements PermissionGateway {
  @override
  AsyncResult<PermissionStatus> getPermissionStatus({
    required Permission permission,
  }) async {
    try {
      final phPermission = _permissionMap[permission]!;
      final status = await phPermission.status;
      return _toPermissionStatus(status).toSuccess();
    } on Exception catch (exception) {
      return exception.toFailure();
    }
  }

  @override
  AsyncResult<PermissionStatus> requestPermission({
    required Permission permission,
  }) async {
    try {
      final phPermission = _permissionMap[permission]!;
      final status = await phPermission.request();
      return _toPermissionStatus(status).toSuccess();
    } on Exception catch (exception) {
      return exception.toFailure();
    }
  }

  @override
  AsyncResult<bool> openAppSettings() async {
    try {
      final result = await ph.openAppSettings();
      return result.toSuccess();
    } on Exception catch (exception) {
      return exception.toFailure();
    }
  }

  /// Converts a `permission_handler` [ph.PermissionStatus] to domain
  /// [PermissionStatus].
  PermissionStatus _toPermissionStatus(ph.PermissionStatus status) =>
      switch (status) {
        ph.PermissionStatus.denied => .denied,
        ph.PermissionStatus.granted => .granted,
        ph.PermissionStatus.permanentlyDenied => .permanentlyDenied,
        ph.PermissionStatus.restricted => .restricted,
        ph.PermissionStatus.limited => .limited,
        ph.PermissionStatus.provisional => .provisional,
      };
}
