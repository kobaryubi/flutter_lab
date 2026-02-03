import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_store_ui_state.freezed.dart';

/// UI state for the AppStoreScreen.
@freezed
abstract class AppStoreUiState with _$AppStoreUiState {
  const factory AppStoreUiState() = _AppStoreUiState;
}
