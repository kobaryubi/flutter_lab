import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/entity/permission/app_permission.dart';
import 'package:flutter_lab/ui/permission/ui_state/permission_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'permission_view_model.g.dart';

/// ViewModel for the permission handler demonstration screen.
@riverpod
class PermissionViewModel extends _$PermissionViewModel {
  @override
  PermissionUiState build() => const PermissionUiState();

  /// Checks the current status of all permissions and updates the UI state.
  Future<void> checkStatuses() async {
    state = state.copyWith(
      statuses: await AsyncValue.guard(
        () async =>
            (await ref.read(checkPermissionStatusesUseCaseProvider).call())
                .getOrThrow(),
      ),
    );
  }

  /// Requests a single permission and refreshes all statuses afterward.
  Future<void> requestPermission({
    required AppPermission permission,
  }) async {
    (await ref
            .read(requestAppPermissionUseCaseProvider)
            .call(permission: permission))
        .getOrThrow();
    await checkStatuses();
  }
}
