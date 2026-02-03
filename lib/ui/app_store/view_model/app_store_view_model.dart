import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/app_store/ui_state/app_store_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_store_view_model.g.dart';

/// ViewModel that manages the app store screen state.
@riverpod
class AppStoreViewModel extends _$AppStoreViewModel {
  @override
  AppStoreUiState build() {
    return const AppStoreUiState();
  }

  /// Fetches the app store URL for the current platform.
  Future<void> fetchAppStoreUrl() async {
    state = state.copyWith(
      appStoreUrl: await AsyncValue.guard(
        () async => ref.read(getAppStoreUrlUseCaseProvider).call().getOrThrow(),
      ),
    );
  }
}
