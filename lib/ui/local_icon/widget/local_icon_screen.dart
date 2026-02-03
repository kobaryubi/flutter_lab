import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/local_icon/view_model/local_icon_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:result_dart/result_dart.dart';

/// Screen that copies a bundled asset to the Application Documents directory
/// on mount, then displays the icon from the local file path.
class LocalIconScreen extends StatelessWidget {
  const LocalIconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      appBar: AppBar(title: Text('Local Icon')),
      child: _Body(),
    );
  }
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(localIconViewModelProvider.notifier);
    final copyResult = useState<Result<File>?>(null);

    /// Copies the asset on mount and stores the result.
    useEffect(
      () {
        Future<void> load() async {
          copyResult.value = await viewModel.copyAsset();
        }

        load();
        return null;
      },
      [],
    );

    /// Copies the asset icon to all version/fileName combinations.
    Future<void> handleCopyShortcutIcons() async {
      await viewModel.copyShortcutIcons();
    }

    /// Deletes all shortcut icons.
    void handleDeleteAll() {
      viewModel.deleteAllShortcutIcons();
    }

    final result = copyResult.value;
    if (result == null) {
      return const Center(child: Text('Copying asset...'));
    }

    return result.fold(
      (localFile) => ListView(
        children: [
          Text(localFile.parent.path),
          Image.file(localFile),
          GestureDetector(
            onTap: handleCopyShortcutIcons,
            child: const Text(
              'Copy Shortcut Icons',
              style: TextStyle(color: Color(0xFF000000)),
            ),
          ),
          GestureDetector(
            onTap: handleDeleteAll,
            child: const Text(
              'Delete All',
              style: TextStyle(color: Color(0xFF000000)),
            ),
          ),
        ],
      ),
      (exception) => Center(child: Text('Error: $exception')),
    );
  }
}
