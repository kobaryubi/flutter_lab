import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'revalidating_image_ui_state.freezed.dart';

/// UI state for the RevalidatingImageScreen.
@freezed
abstract class RevalidatingImageUiState with _$RevalidatingImageUiState {
  const factory RevalidatingImageUiState({
    /// The fetched image URL. `null` before the first fetch.
    AsyncValue<Uri>? imageUrl,

    /// HTTP status code of the most recent revalidation: `304` (cache reused)
    /// or `200` (cache replaced). `null` until the image has been loaded once.
    int? lastStatusCode,
  }) = _RevalidatingImageUiState;
}
