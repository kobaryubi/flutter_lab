import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:path_provider/path_provider.dart';

/// Screen that displays various local directory paths from path_provider.
class LocalPathsScreen extends StatelessWidget {
  const LocalPathsScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Local Paths')),
    child: _Body(),
  );
}

/// Entry representing a labeled directory path.
class _PathEntry {
  const _PathEntry({required this.label, required this.path});
  final String label;
  final String path;
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final entries = useState<List<_PathEntry>>([]);

    /// Adds a path entry by calling the getter and handling errors.
    Future<_PathEntry> addPath({
      required String label,
      required Future<Directory> Function() getter,
    }) async {
      try {
        final directory = await getter();
        return _PathEntry(label: label, path: directory.path);
      } on Object catch (error) {
        final message = error is UnsupportedError
            ? 'unsupported'
            : error.toString();
        return _PathEntry(label: label, path: message);
      }
    }

    /// Loads all available directory paths from path_provider.
    Future<void> loadPaths() async {
      final results = [
        await addPath(
          label: 'Application Documents',
          getter: () async => getApplicationDocumentsDirectory(),
        ),
        await addPath(
          label: 'Application Support',
          getter: () async => getApplicationSupportDirectory(),
        ),
        await addPath(
          label: 'Application Cache',
          getter: () async => getApplicationCacheDirectory(),
        ),
        await addPath(
          label: 'Temporary',
          getter: () async => getTemporaryDirectory(),
        ),
      ];

      entries.value = results;
    }

    useEffect(
      () {
        loadPaths();
        return null;
      },
      [],
    );

    return ListView.builder(
      itemCount: entries.value.length,
      itemBuilder: (context, index) {
        final entry = entries.value[index];
        return Column(
          children: [
            Text(entry.label),
            Text(entry.path),
          ],
        );
      },
    );
  }
}
