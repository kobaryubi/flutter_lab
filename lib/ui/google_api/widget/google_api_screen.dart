import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/google_api/view_model/google_api_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen for checking Google Play Services availability.
class GoogleApiScreen extends StatelessWidget {
  const GoogleApiScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Google API')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(googleApiViewModelProvider);

    useEffect(() {
      ref.read(googleApiViewModelProvider.notifier).checkAvailability();
      return null;
    }, const []);

    final availability = uiState.availability;

    if (availability == null) {
      return const Text('Checking...');
    }

    if (availability.isLoading) {
      return const Text('Loading...');
    }

    if (availability case AsyncError(:final error)) {
      return Text('Error: $error');
    }

    if (availability case AsyncData(:final value)) {
      return Padding(
        padding: const .all(16),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text('Available: ${value.isAvailable}'),
            Text('Status Code: ${value.statusCode}'),
            Text('Status Message: ${value.statusMessage}'),
          ],
        ),
      );
    }

    return const SizedBox.shrink();
  }
}
