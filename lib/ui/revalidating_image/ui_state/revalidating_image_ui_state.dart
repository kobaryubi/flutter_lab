import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'revalidating_image_ui_state.freezed.dart';

/// UI state for the RevalidatingImageScreen.
@freezed
abstract class RevalidatingImageUiState with _$RevalidatingImageUiState {
  const factory RevalidatingImageUiState({
    /// The fetched image URL. `null` before the first fetch.
    AsyncValue<Uri>? imageUrl,
  }) = _RevalidatingImageUiState;
}
