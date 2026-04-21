import 'dart:async';

import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/application/notifier/pending_deferred_deeplink_notifier.dart';
import 'package:flutter_lab/ui/flutter_lab_app/ui_state/flutter_lab_app_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'flutter_lab_app_view_model.g.dart';

/// ViewModel that manages app-level token refresh registration.
@riverpod
class FlutterLabAppViewModel extends _$FlutterLabAppViewModel {
  StreamSubscription<String>? _subscription;

  @override
  FlutterLabAppUiState build() {
    final onPushTokenRefreshUseCase = ref.read(
      onPushTokenRefreshUseCaseProvider,
    );
    _subscription = onPushTokenRefreshUseCase.call().listen(
      _handleTokenRefresh,
    );
    ref.onDispose(() => _subscription?.cancel());

    _initializeAdjust();
    _initializeMax();

    return const FlutterLabAppUiState();
  }

  /// Initializes the Adjust SDK at app startup (fire-and-forget).
  ///
  /// Routes the SDK's deferred deep link callback into
  /// [PendingDeferredDeeplinkNotifier] so the link can be consumed by the
  /// UI once the app is ready (e.g. after onboarding completes).
  Future<void> _initializeAdjust() async {
    final useCase = ref.read(initializeAdjustUseCaseProvider);

    await useCase.call(onDeferredDeeplink: _handleDeferredDeeplink);
  }

  /// Forwards a deferred deep link captured by Adjust into the
  /// [PendingDeferredDeeplinkNotifier].
  void _handleDeferredDeeplink(String deeplink) {
    ref
        .read(pendingDeferredDeeplinkProvider.notifier)
        .capture(deeplink: deeplink);
  }

  /// Initializes the AppLovin MAX SDK at app startup (fire-and-forget).
  Future<void> _initializeMax() async {
    final useCase = ref.read(initializeMaxUseCaseProvider);
    await useCase.call();
  }

  /// Handles token refresh events by registering the new token.
  Future<void> _handleTokenRefresh(String token) async {
    final useCase = ref.read(registerTokenUseCaseProvider);
    await useCase.call(token: token);
  }
}
