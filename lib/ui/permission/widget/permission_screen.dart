import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/domain/entity/permission/app_permission.dart';
import 'package:flutter_lab/domain/entity/permission/permission_statuses.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/permission/view_model/permission_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

/// Screen to demonstrate the permission_handler package.
class PermissionScreen extends StatelessWidget {
  const PermissionScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Permission')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(permissionViewModelProvider.notifier);
    final uiState = ref.watch(permissionViewModelProvider);

    useEffect(
      () {
        viewModel.checkStatuses();
        return null;
      },
      const [],
    );

    /// Handles tapping on a permission row to request it.
    void handleRequest(AppPermission permission) {
      viewModel.requestPermission(permission: permission);
    }

    /// Handles tapping the "Open Settings" button.
    void handleOpenSettings() {
      openAppSettings();
    }

    final statuses = uiState.statuses;

    return Column(
      crossAxisAlignment: .stretch,
      children: [
        if (statuses case AsyncData(:final value))
          Expanded(
            child: _PermissionList(
              statuses: value,
              onRequest: handleRequest,
            ),
          )
        else
          const Expanded(
            child: Center(child: Text('Loading...')),
          ),
        GestureDetector(
          onTap: handleOpenSettings,
          child: const Text('Open Settings'),
        ),
      ],
    );
  }
}

class _PermissionList extends StatelessWidget {
  const _PermissionList({
    required this.statuses,
    required this.onRequest,
  });

  final PermissionStatuses statuses;
  final ValueChanged<AppPermission> onRequest;

  @override
  Widget build(BuildContext context) => ListView(
    children: statuses.statuses.entries.map((entry) {
      final permissionName = entry.key.name;
      final statusName = entry.value.name;
      return GestureDetector(
        behavior: .opaque,
        onTap: () => onRequest(entry.key),
        child: Row(
          children: [
            Expanded(child: Text(permissionName)),
            Text(statusName),
          ],
        ),
      );
    }).toList(),
  );
}
