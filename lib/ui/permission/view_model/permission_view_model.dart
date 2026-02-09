import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/entity/permission/permission.dart';
import 'package:flutter_lab/domain/entity/permission/permission_status.dart';
import 'package:flutter_lab/ui/permission/ui_state/permission_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'permission_view_model.g.dart';

/// ViewModel for the permission handler demonstration screen.
@riverpod
class PermissionViewModel extends _$PermissionViewModel {
  @override
  PermissionUiState build() => const PermissionUiState();

  /// Gets the current status of all permissions and updates the UI state.
  Future<void> fetchPermissionStatuses() async {
    final useCase = ref.read(getPermissionStatusUseCaseProvider);
    state = state.copyWith(
      statuses: await AsyncValue.guard(() async {
        final statuses = <Permission, PermissionStatus>{};
        for (final permission in Permission.values) {
          statuses[permission] = (await useCase.call(
            permission: permission,
          )).getOrThrow();
        }
        return statuses;
      }),
    );
  }

  /// Requests a single permission and refreshes all statuses afterward.
  Future<void> requestPermission({
    required Permission permission,
  }) async {
    (await ref
            .read(requestPermissionUseCaseProvider)
            .call(permission: permission))
        .getOrThrow();
    await fetchPermissionStatuses();
  }

  /// Opens the app settings page.
  Future<void> openAppSettings() async {
    (await ref.read(openAppSettingsUseCaseProvider).call()).getOrThrow();
  }
}
