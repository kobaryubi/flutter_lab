import 'dart:io';

import 'package:flutter_lab/ui/local_paths/ui_state/local_paths_ui_state.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_paths_view_model.g.dart';

/// ViewModel that loads local directory paths from path_provider.
@riverpod
class LocalPathsViewModel extends _$LocalPathsViewModel {
  @override
  LocalPathsUiState build() => const LocalPathsUiState();

  /// Loads all available directory paths from path_provider.
  Future<void> loadPaths() async {
    state = state.copyWith(
      paths: await AsyncValue.guard(() async {
        final results = <PathEntry>[];
        for (final entry in _pathGetters) {
          results.add(await _getPath(label: entry.label, getter: entry.getter));
        }
        return results;
      }),
    );
  }

  /// Gets a path entry by calling the getter and handling errors.
  Future<PathEntry> _getPath({
    required String label,
    required Future<Directory> Function() getter,
  }) async {
    try {
      final directory = await getter();
      return PathEntry(label: label, path: directory.path);
    } on Object catch (error) {
      final message = error is UnsupportedError
          ? 'unsupported'
          : error.toString();
      return PathEntry(label: label, path: message);
    }
  }
}

/// Path getter definitions.
const List<({Future<Directory> Function() getter, String label})> _pathGetters =
    [
      (
        label: 'Application Documents',
        getter: getApplicationDocumentsDirectory,
      ),
      (label: 'Application Support', getter: getApplicationSupportDirectory),
      (label: 'Application Cache', getter: getApplicationCacheDirectory),
      (label: 'Temporary', getter: getTemporaryDirectory),
    ];
