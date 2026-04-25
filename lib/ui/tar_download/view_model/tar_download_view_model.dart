import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_lab/flavors.dart';
import 'package:flutter_lab/ui/tar_download/ui_state/tar_download_ui_state.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tar_download_view_model.g.dart';

/// ViewModel for the tar-download sample screen.
///
/// Downloads `sample.tar` from the local nginx asset server and writes it
/// to the app documents directory, exposing the resulting path and size
/// through [TarDownloadUiState.result].
@riverpod
class TarDownloadViewModel extends _$TarDownloadViewModel {
  static const _fileName = 'sample.tar';

  @override
  TarDownloadUiState build() => const TarDownloadUiState();

  /// Downloads the sample tar archive and saves it to app documents.
  Future<void> download() async {
    state = state.copyWith(result: const AsyncLoading());

    final result = await AsyncValue.guard(() async {
      final response = await Dio().get<List<int>>(
        '${F.assetBaseUrl}/$_fileName',
        options: Options(responseType: ResponseType.bytes),
      );
      final bytes = response.data!;

      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/$_fileName');
      await file.writeAsBytes(bytes);

      return TarDownloadResult(path: file.path, sizeBytes: bytes.length);
    });

    state = state.copyWith(result: result);
  }
}
