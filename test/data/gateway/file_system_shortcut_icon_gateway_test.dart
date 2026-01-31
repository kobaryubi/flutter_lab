import 'dart:io';

import 'package:flutter_lab/data/gateway/file_system_shortcut_icon_gateway.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

/// Fake [PathProviderPlatform] that returns a custom documents path.
class FakePathProvider extends Fake
    with MockPlatformInterfaceMixin
    implements PathProviderPlatform {
  FakePathProvider(this._documentsPath);

  final String _documentsPath;

  @override
  Future<String?> getApplicationDocumentsPath() async => _documentsPath;
}

void main() {
  late Directory tempDir;
  late FileSystemShortcutIconGateway gateway;

  setUp(() async {
    tempDir = await Directory.systemTemp.createTemp('shortcut_gateway_test_');
    PathProviderPlatform.instance = FakePathProvider(tempDir.path);
    gateway = FileSystemShortcutIconGateway();
  });

  tearDown(() async {
    if (tempDir.existsSync()) {
      await tempDir.delete(recursive: true);
    }
  });

  group('deleteAllIcons', () {
    test('deletes shortcuts directory when it exists', () async {
      final shortcutsDir = Directory(
        path.join(tempDir.path, 'downloads', 'shortcuts'),
      );
      await shortcutsDir.create(recursive: true);
      File(
        path.join(shortcutsDir.path, 'icon.png'),
      ).writeAsBytesSync([1, 2, 3]);

      final result = await gateway.deleteAllIcons();

      expect(result.isSuccess(), true);
      expect(shortcutsDir.existsSync(), false);
    });

    test('returns Success when shortcuts directory does not exist', () async {
      final result = await gateway.deleteAllIcons();

      expect(result.isSuccess(), true);
    });
  });

  group('deleteIcon', () {
    test('deletes file when it exists', () async {
      final shortcutsDir = Directory(
        path.join(tempDir.path, 'downloads', 'shortcuts'),
      );
      await shortcutsDir.create(recursive: true);
      final file = File(path.join(shortcutsDir.path, 'icon.png'))
        ..writeAsBytesSync([1, 2, 3]);

      final result = await gateway.deleteIcon(fileName: 'icon.png');

      expect(result.isSuccess(), true);
      expect(file.existsSync(), false);
    });

    test('returns Success when file does not exist', () async {
      final result = await gateway.deleteIcon(fileName: 'missing.png');

      expect(result.isSuccess(), true);
    });
  });
}
