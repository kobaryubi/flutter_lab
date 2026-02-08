import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/local_paths/view_model/local_paths_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen that displays various local directory paths from path_provider.
class LocalPathsScreen extends StatelessWidget {
  const LocalPathsScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Local Paths')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(localPathsViewModelProvider);

    useEffect(() {
      ref.read(localPathsViewModelProvider.notifier).loadPaths();
      return null;
    }, const []);

    if (uiState.paths case AsyncData(:final value)) {
      return ListView.builder(
        itemCount: value.length,
        itemBuilder: (context, index) {
          final entry = value[index];
          return Column(
            children: [
              Text(entry.label),
              Text(entry.path),
            ],
          );
        },
      );
    }

    return const Center(child: Text('Loading...'));
  }
}
