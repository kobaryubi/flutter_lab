import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/shared_preferences/provider/shared_preferences_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen to test shared preferences functionality.
class SharedPreferencesScreen extends StatelessWidget {
  const SharedPreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Shared Preferences')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sharedPreferencesViewModelProvider);
    final viewModel = ref.read(sharedPreferencesViewModelProvider.notifier);

    /// Saves the current datetime to shared preferences.
    void handleSave() {
      viewModel.save();
    }

    /// Loads the latest agreed date from shared preferences.
    void handleLoad() {
      viewModel.load();
    }

    // Load latest agreed date on initial render.
    useEffect(() {
      viewModel.load();
      return null;
    }, []);

    final displayText =
        state.latestAgreedDate?.when(
          data: (datetime) => 'Stored: ${datetime.toIso8601String()}',
          loading: () => 'Loading...',
          error: (error, _) => 'No value',
        ) ??
        'No value';

    return Column(
      mainAxisAlignment: .center,
      children: [
        Text(displayText),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: handleSave,
          child: const Text('Save Current Datetime'),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: handleLoad,
          child: const Text('Load Datetime'),
        ),
      ],
    );
  }
}
