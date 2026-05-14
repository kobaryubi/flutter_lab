import 'package:flutter/widgets.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/entity/push_notification/push_message.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/push_notification/ui_state/push_notification_ui_state.dart';
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
    final logger = ref.read(loggerGatewayProvider);

    /// Navigates to the logged-in home screen when the initial-message
    /// load completes with a non-null value. Opened-message navigation is
    /// handled at the app level in [FlutterLabApp].
    void handleUiStateChange(
      PushNotificationUiState? previous,
      PushNotificationUiState next,
    ) {
      logger.debug(
        'handleUiStateChange: '
        'previousInitialMessage=${previous?.initialMessage}, '
        'nextInitialMessage=${next.initialMessage}',
      );

      if (next.initialMessage case AsyncData(
        value: final _?,
      ) when previous?.initialMessage != next.initialMessage) {
        logger.debug('Navigating to LoggedInHome via initial message');
        LoggedInHomeTab1Route(
          nonce: DateTime.now().microsecondsSinceEpoch.toString(),
        ).go(context);
      }
    }

    ref.listen(pushNotificationViewModelProvider, handleUiStateChange);

    /// Requests push notification permission and displays the result.
    void handleRequestPermission() {
      viewModel.requestPushNotificationPermission();
    }

    /// Forces a push token rotation so onPushTokenRefresh fires.
    void handleRotateToken() {
      viewModel.rotatePushToken();
    }

    /// Deletes the legacy `general_notifications` Android channel.
    void handleDeleteGeneralNotificationsChannel() {
      viewModel.deleteGeneralNotificationsChannel();
    }

    final permission = uiState.permission;
    final rotation = uiState.rotation;
    final channelDeletion = uiState.channelDeletion;
    final initialMessage = uiState.initialMessage;

    return ListView(
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
        GestureDetector(
          onTap: handleDeleteGeneralNotificationsChannel,
          child: const Text('Delete general_notifications channel'),
        ),
        if (channelDeletion case AsyncLoading()) const Text('Deleting...'),
        if (channelDeletion case AsyncData())
          const Text('general_notifications deleted.'),
        if (channelDeletion case AsyncError(:final error))
          Text('Error: $error'),
        const Text('--- Initial Message ---'),
        if (initialMessage case AsyncData(:final value))
          Text(value == null ? 'none' : _formatMessage(value)),
        const Text('--- Foreground Messages ---'),
        if (uiState.foregroundMessages.isEmpty)
          const Text('none')
        else
          for (final message in uiState.foregroundMessages)
            Text(_formatMessage(message)),
      ],
    );
  }
}

/// Renders a [PushMessage] as a single string for display.
String _formatMessage(PushMessage message) =>
    'id=${message.messageId ?? "-"} '
    'notification=${message.notification} '
    'data=${message.data}';
