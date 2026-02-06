import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'ocr_ui_state.freezed.dart';

/// UI state for the OCR screen.
///
/// `recognizedText` is `null` for the initial state before processing.
@freezed
abstract class OcrUiState with _$OcrUiState {
  const factory OcrUiState({
    AsyncValue<String>? recognizedText,
  }) = _OcrUiState;
}
