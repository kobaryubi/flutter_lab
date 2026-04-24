import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/tar_download/ui_state/tar_download_ui_state.dart';
import 'package:flutter_lab/ui/tar_download/view_model/tar_download_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Sample screen that downloads sample.tar from the local asset server
/// and writes it to the app documents directory.
class TarDownloadScreen extends StatelessWidget {
  const TarDownloadScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Tar Download')),
    child: _Body(),
  );
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(tarDownloadViewModelProvider);
    final viewModel = ref.read(tarDownloadViewModelProvider.notifier);

    /// Kicks off the tar download.
    void handleDownload() {
      viewModel.download();
    }

    return Column(
      crossAxisAlignment: .start,
      spacing: 8,
      children: [
        GestureDetector(
          onTap: handleDownload,
          child: const Text('Download sample.tar'),
        ),
        if (uiState.result == null) const Text('Tap the button to download.'),
        if (uiState.result case AsyncLoading()) const Text('Downloading...'),
        if (uiState.result case AsyncData(:final value))
          _ResultView(result: value),
        if (uiState.result case AsyncError(:final error)) Text('Error: $error'),
      ],
    );
  }
}

class _ResultView extends StatelessWidget {
  const _ResultView({required this.result});

  final TarDownloadResult result;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: .start,
    children: [
      Text('Saved to: ${result.path}'),
      Text('Size: ${result.sizeBytes} bytes'),
    ],
  );
}
