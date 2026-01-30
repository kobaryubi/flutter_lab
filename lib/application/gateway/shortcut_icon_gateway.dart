import 'dart:io';

import 'package:result_dart/result_dart.dart';

/// Gateway abstracting file system operations for shortcut icons.
abstract class ShortcutIconGateway {
  /// Saves an asset to the local file system.
  AsyncResult<File> saveIcon({
    required String assetPath,
    required String fileName,
  });

  /// Deletes a local icon file.
  AsyncResult<Unit> deleteIcon({required String fileName});

  /// Deletes all icons by removing the shortcuts directory.
  AsyncResult<Unit> deleteAllIcons();
}
