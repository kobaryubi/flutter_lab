import 'package:flutter_lab/domain/shortcut/shortcut_repository.dart';
import 'package:path/path.dart' as path;
import 'package:result_dart/result_dart.dart';

/// Copies a single asset icon to multiple version directories with
/// multiple file names.
class CopyShortcutIconsUseCase {
  CopyShortcutIconsUseCase({
    required ShortcutRepository shortcutRepository,
  }) : _shortcutRepository = shortcutRepository;

  final ShortcutRepository _shortcutRepository;

  /// Asset path for the source icon.
  static const _assetPath = 'assets/images/search.png';

  /// Version directories to copy into.
  static const _versionDirectories = ['v1', 'v2', 'v3'];

  /// File names to create in each version directory.
  static const _iconFileNames = ['home.png', 'search.png', 'share.png'];

  /// Copies the asset icon to every version × file name combination.
  AsyncResult<Unit> call() async {
    for (final version in _versionDirectories) {
      for (final fileName in _iconFileNames) {
        await _shortcutRepository.saveShortcutIcon(
          assetPath: _assetPath,
          fileName: path.join(version, fileName),
        );
      }
    }
    return const Success(unit);
  }
}
