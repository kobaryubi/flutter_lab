import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/push_notification/view_model/push_notification_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen to test push notification permission and device token retrieval.
class PushNotificationScreen extends StatelessWidget {
  const PushNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Push Notification')),
    child: _Body(),
  );
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(pushNotificationViewModelProvider);
    final viewModel = ref.read(pushNotificationViewModelProvider.notifier);

    /// Requests push notification permission and displays the result.
    void handleRequestPermission() {
      viewModel.requestPushNotificationPermission();
    }

    /// Forces a push token rotation so onPushTokenRefresh fires.
    void handleRotateToken() {
      viewModel.rotatePushToken();
    }

    final permission = uiState.permission;
    final rotation = uiState.rotation;

    return Column(
      crossAxisAlignment: .stretch,
      children: [
        GestureDetector(
          onTap: handleRequestPermission,
          child: const Text('Request Permission'),
        ),
        if (permission case AsyncData(:final value)) ...[
          Text('Authorization: ${value.authorizationStatus}'),
          Text('APNs Token: ${value.apnsToken ?? "N/A"}'),
          Text('Device Token: ${value.deviceToken ?? "N/A"}'),
        ],
        GestureDetector(
          onTap: handleRotateToken,
          child: const Text('Rotate Token'),
        ),
        if (rotation case AsyncLoading()) const Text('Rotating...'),
        if (rotation case AsyncData()) const Text('Token rotated.'),
        if (rotation case AsyncError(:final error)) Text('Error: $error'),
      ],
    );
  }
}
