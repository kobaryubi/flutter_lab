import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'app_store_ui_state.freezed.dart';

/// UI state for the AppStoreScreen.
///
/// `appStoreUrl` defaults to loading state.
@freezed
abstract class AppStoreUiState with _$AppStoreUiState {
  const factory AppStoreUiState({
    @Default(AsyncValue<Uri>.loading()) AsyncValue<Uri> appStoreUrl,
  }) = _AppStoreUiState;
}
