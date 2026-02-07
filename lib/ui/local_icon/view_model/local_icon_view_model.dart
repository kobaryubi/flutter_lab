import 'dart:io';

import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/local_icon/ui_state/local_icon_ui_state.dart';
import 'package:result_dart/result_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart' hide AsyncResult;

part 'local_icon_view_model.g.dart';

/// ViewModel that manages copying and deleting shortcut icons.
@riverpod
class LocalIconViewModel extends _$LocalIconViewModel {
  @override
  LocalIconUiState build() => const LocalIconUiState();

  /// Copies the bundled asset to the local file system.
  AsyncResult<File> copyAsset() async {
    final repository = ref.read(shortcutRepositoryProvider);
    return repository.saveShortcutIcon(
      assetPath: 'assets/images/search.png',
      fileName: 'search.png',
    );
  }

  /// Copies the asset icon to all version/fileName combinations.
  AsyncResult<Unit> copyShortcutIcons() async {
    final useCase = ref.read(copyShortcutIconsUseCaseProvider);
    return useCase.call();
  }

  /// Deletes all shortcut icons.
  AsyncResult<Unit> deleteAllShortcutIcons() async {
    final useCase = ref.read(deleteAllShortcutIconsUseCaseProvider);
    return useCase.call();
  }
}
