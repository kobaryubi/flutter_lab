import 'package:flutter_lab/domain/shortcut/shortcut_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Deletes all shortcut icons from the local file system.
class DeleteAllShortcutIconsUseCase {
  DeleteAllShortcutIconsUseCase({
    required ShortcutRepository shortcutRepository,
  }) : _shortcutRepository = shortcutRepository;

  final ShortcutRepository _shortcutRepository;

  /// Removes every shortcut icon by delegating to the repository.
  AsyncResult<Unit> call() async =>
      _shortcutRepository.deleteAllShortcutIcons();
}
