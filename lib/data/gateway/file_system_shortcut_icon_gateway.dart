import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_lab/application/gateway/shortcut_icon_gateway.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:result_dart/result_dart.dart';

/// File system implementation of [ShortcutIconGateway].
///
/// Icons are stored under `downloads/shortcuts/` within the
/// application documents directory.
class FileSystemShortcutIconGateway implements ShortcutIconGateway {
  static const _subDirectory = 'downloads/shortcuts';

  /// Returns the shortcuts directory, creating it if it does not exist.
  Future<Directory> _getShortcutsDirectory() async {
    final documents = await getApplicationDocumentsDirectory();
    final directory = Directory(
      path.join(documents.path, _subDirectory),
    );
    if (!directory.existsSync()) {
      await directory.create(recursive: true);
    }
    return directory;
  }

  @override
  AsyncResult<File> saveIcon({
    required String assetPath,
    required String fileName,
  }) async {
    try {
      final byteData = await rootBundle.load(assetPath);
      final directory = await _getShortcutsDirectory();
      final file = File(path.join(directory.path, fileName));
      await file.writeAsBytes(
        byteData.buffer.asUint8List(),
        flush: true,
      );
      return Success(file);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<Unit> deleteIcon({required String fileName}) async {
    try {
      final directory = await _getShortcutsDirectory();
      final file = File(path.join(directory.path, fileName));
      if (file.existsSync()) {
        await file.delete();
      }
      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<Unit> deleteAllIcons() async {
    try {
      final documents = await getApplicationDocumentsDirectory();
      final directory = Directory(
        path.join(documents.path, _subDirectory),
      );
      if (directory.existsSync()) {
        await directory.delete(recursive: true);
      }
      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }
}
