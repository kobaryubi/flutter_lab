import 'dart:io';

import 'package:flutter_lab/application/gateway/shortcut_icon_gateway.dart';
import 'package:flutter_lab/domain/shortcut/shortcut_repository.dart';
import 'package:result_dart/result_dart.dart';

/// File system implementation of [ShortcutRepository] that delegates
/// to a [ShortcutIconGateway].
class FileSystemShortcutRepository implements ShortcutRepository {
  /// Creates a [FileSystemShortcutRepository].
  FileSystemShortcutRepository({
    required ShortcutIconGateway gateway,
  }) : _gateway = gateway;

  final ShortcutIconGateway _gateway;

  @override
  AsyncResult<File> saveShortcutIcon({
    required String assetPath,
    required String fileName,
  }) {
    return _gateway.saveIcon(assetPath: assetPath, fileName: fileName);
  }

  @override
  AsyncResult<Unit> deleteShortcutIcon({required String fileName}) {
    return _gateway.deleteIcon(fileName: fileName);
  }
}
