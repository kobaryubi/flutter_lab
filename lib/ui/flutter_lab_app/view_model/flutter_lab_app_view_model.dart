import 'dart:async';

import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/flutter_lab_app/ui_state/flutter_lab_app_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'flutter_lab_app_view_model.g.dart';

/// ViewModel that manages app-level token refresh registration.
@riverpod
class FlutterLabAppViewModel extends _$FlutterLabAppViewModel {
  StreamSubscription<String>? _subscription;

  @override
  FlutterLabAppUiState build() {
    final onTokenRefreshUseCase = ref.read(onTokenRefreshUseCaseProvider);
    _subscription = onTokenRefreshUseCase.call().listen(_handleTokenRefresh);
    ref.onDispose(() => _subscription?.cancel());

    _initializeAdjust();
    _initializeMax();

    return const FlutterLabAppUiState();
  }

  /// Initializes the Adjust SDK at app startup (fire-and-forget).
  Future<void> _initializeAdjust() async {
    final useCase = ref.read(initializeAdjustUseCaseProvider);
    await useCase.call();
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
