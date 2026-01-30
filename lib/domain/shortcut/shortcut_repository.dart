import 'dart:io';

import 'package:result_dart/result_dart.dart';

/// Repository for managing shortcut icons.
abstract class ShortcutRepository {
  /// Saves a shortcut icon from an asset to the local file system.
  AsyncResult<File> saveShortcutIcon({
    required String assetPath,
    required String fileName,
  });

  /// Deletes a shortcut icon from the local file system.
  AsyncResult<Unit> deleteShortcutIcon({required String fileName});
}
