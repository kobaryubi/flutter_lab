import 'package:flutter_lab/ui/permission/ui_state/permission_ui_state.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'permission_view_model.g.dart';

/// Permissions to check and request.
const List<Permission> _permissions = [
  Permission.camera,
  Permission.location,
  Permission.notification,
];

/// ViewModel for the permission handler demonstration screen.
@riverpod
class PermissionViewModel extends _$PermissionViewModel {
  @override
  PermissionUiState build() => const PermissionUiState();

  /// Checks the current status of all permissions and updates the UI state.
  Future<void> checkStatuses() async {
    final statuses = <Permission, PermissionStatus>{};
    for (final permission in _permissions) {
      statuses[permission] = await permission.status;
    }
    state = state.copyWith(statuses: statuses);
  }

  /// Requests a single permission and refreshes all statuses afterward.
  Future<void> requestPermission({required Permission permission}) async {
    await permission.request();
    await checkStatuses();
  }
}
