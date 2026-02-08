import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/local_icon/view_model/local_icon_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen that copies a bundled asset to the Application Documents directory
/// on mount, then displays the icon from the local file path.
class LocalIconScreen extends StatelessWidget {
  const LocalIconScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Local Icon')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(localIconViewModelProvider.notifier);
    final uiState = ref.watch(localIconViewModelProvider);

    useEffect(() {
      viewModel.copyAsset();
      return null;
    }, const []);

    /// Copies the asset icon to all version/fileName combinations.
    Future<void> handleCopyShortcutIcons() async {
      await viewModel.copyShortcutIcons();
    }

    /// Deletes all shortcut icons.
    void handleDeleteAll() {
      viewModel.deleteAllShortcutIcons();
    }

    if (uiState.copyAsset case AsyncData(:final value)) {
      return ListView(
        children: [
          Text(value.parent.path),
          Image.file(value),
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
      );
    }

    if (uiState.copyAsset case AsyncError(:final error)) {
      return Center(child: Text('Error: $error'));
    }

    return const Center(child: Text('Copying asset...'));
  }
}
