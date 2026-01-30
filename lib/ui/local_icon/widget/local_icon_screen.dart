import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:path_provider/path_provider.dart';

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

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final file = useState<File?>(null);

    /// Copies the bundled search.png asset to the Application Documents
    /// directory and updates state with the resulting file.
    Future<void> copyAsset() async {
      final byteData = await rootBundle.load('assets/images/search.png');
      final directory = await getApplicationDocumentsDirectory();
      final localFile = File('${directory.path}/search.png');
      await localFile.writeAsBytes(
        byteData.buffer.asUint8List(),
        flush: true,
      );
      file.value = localFile;
    }

    useEffect(
      () {
        copyAsset();
        return null;
      },
      [],
    );

    final localFile = file.value;
    if (localFile == null) {
      return const Center(child: Text('Copying asset...'));
    }

    return Center(child: Image.file(localFile));
  }
}
