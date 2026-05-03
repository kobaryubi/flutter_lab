import 'package:flutter/services.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/data/secure_storage/secure_storage_keys.dart';
import 'package:flutter_lab/data/shared_preferences/shared_preferences_keys.dart';
import 'package:flutter_lab/presentation/core/provider/global_snackbar_notifier.dart';
import 'package:flutter_lab/ui/debug/ui_state/debug_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'debug_view_model.g.dart';

/// ViewModel for the DebugScreen storage sections.
///
/// Loads both storage backends on build, exposes save operations that
/// refresh the relevant section, and a copy-to-clipboard action that
/// posts a global snackbar on success.
@riverpod
class DebugViewModel extends _$DebugViewModel {
  @override
  DebugUiState build() {
    Future.microtask(() async {
      await loadLocal();
      await loadSecure();
    });

    return const DebugUiState();
  }

  /// Loads SharedPreferences entries for the declared keys.
  Future<void> loadLocal() async {
    final service = ref.read(sharedPreferencesServiceProvider);

    final localEntries = await AsyncValue.guard(() async {
      final raw = await service.getAll(keys: SharedPreferencesKeys.all);

      return <String, Object>{
        for (final entry in raw.entries)
          if (entry.value != null) entry.key: entry.value!,
      };
    });

    state = state.copyWith(localEntries: localEntries);
  }

  /// Loads FlutterSecureStorage entries for the declared keys.
  Future<void> loadSecure() async {
    final service = ref.read(secureStorageServiceProvider);

    final secureEntries = await AsyncValue.guard(
      () => service.getAll(keys: SecureStorageKeys.all),
    );

    state = state.copyWith(secureEntries: secureEntries);
  }

  /// Writes [value] to SharedPreferences under [key], then refreshes.
  Future<void> saveLocal({
    required String key,
    required Object value,
  }) async {
    final service = ref.read(sharedPreferencesServiceProvider);

    await service.writeValue(key: key, value: value);
    await loadLocal();
  }

  /// Writes [value] to FlutterSecureStorage under [key], then refreshes.
  Future<void> saveSecure({
    required String key,
    required String value,
  }) async {
    final service = ref.read(secureStorageServiceProvider);

    await service.writeValue(key: key, value: value);
    await loadSecure();
  }

  /// Copies [value] to the clipboard and posts a snackbar.
  Future<void> copyValue({required String value}) async {
    await Clipboard.setData(ClipboardData(text: value));

    ref.read(globalSnackbarProvider.notifier).show(text: 'copied');
  }

  /// Forces a push token rotation. The new token is delivered via
  /// `onPushTokenRefresh` and logged through talker.
  Future<void> rotatePushToken() async {
    final useCase = ref.read(rotatePushTokenUseCaseProvider);
    await useCase.call();
  }
}
