import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/method_channel/view_model/method_channel_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen for learning method channel communication with native platforms.
class MethodChannelScreen extends StatelessWidget {
  const MethodChannelScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Method Channel')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final location = ref.watch(
      methodChannelViewModelProvider.select((uiState) => uiState.location),
    );

    useEffect(() {
      ref.read(methodChannelViewModelProvider.notifier).getLocation();
      return null;
    }, const []);

    if (location == null || location.isLoading) {
      return const Center(child: Text('Loading...'));
    }

    if (location case AsyncError(:final error)) {
      return Center(child: Text('Error: $error'));
    }

    if (location case AsyncData(:final value)) {
      return Column(
        crossAxisAlignment: .start,
        children: [
          Text('Latitude: ${value.latitude}'),
          Text('Longitude: ${value.longitude}'),
        ],
      );
    }

    return const SizedBox.shrink();
  }
}
