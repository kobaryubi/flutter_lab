import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/app_store/ui_state/app_store_ui_state.dart';
import 'package:result_dart/result_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_store_view_model.g.dart';

/// ViewModel that manages the app store screen state.
@riverpod
class AppStoreViewModel extends _$AppStoreViewModel {
  @override
  AppStoreUiState build() {
    return const AppStoreUiState();
  }

  /// Returns the app store URL for the current platform.
  Result<Uri> getAppStoreUrl() {
    return ref.read(getAppStoreUrlUseCaseProvider).call();
  }
}
