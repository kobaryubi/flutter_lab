import 'package:flutter_lab/domain/entity/permission/app_permission.dart';
import 'package:flutter_lab/domain/entity/permission/app_permission_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_statuses.freezed.dart';

/// Holds the current status of each requested permission.
@freezed
abstract class PermissionStatuses with _$PermissionStatuses {
  const factory PermissionStatuses({
    required Map<AppPermission, AppPermissionStatus> statuses,
  }) = _PermissionStatuses;
}
