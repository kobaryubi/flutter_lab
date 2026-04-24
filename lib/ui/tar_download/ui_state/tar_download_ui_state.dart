import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'tar_download_ui_state.freezed.dart';

/// Outcome of a completed tar download — the saved file's path and size.
@freezed
abstract class TarDownloadResult with _$TarDownloadResult {
  const factory TarDownloadResult({
    required String path,
    required int sizeBytes,
  }) = _TarDownloadResult;
}

/// UI state for the tar-download sample screen.
///
/// `result` is `null` initially, [AsyncLoading] while downloading,
/// [AsyncData] on success, [AsyncError] on failure.
@freezed
abstract class TarDownloadUiState with _$TarDownloadUiState {
  const factory TarDownloadUiState({
    AsyncValue<TarDownloadResult>? result,
  }) = _TarDownloadUiState;
}
