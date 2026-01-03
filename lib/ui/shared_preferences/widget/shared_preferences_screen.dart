import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Screen to test shared preferences functionality.
class SharedPreferencesScreen extends StatelessWidget {
  const SharedPreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      appBar: AppBar(title: Text('Shared Preferences')),
      child: _Body(),
    );
  }
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = useState<int>(0);
    final savedValue = useState<String>('Not loaded');
    final textController = useTextEditingController();
    final isLoading = useState<bool>(true);

    Future<void> handleLoadValue() async {
      final prefs = await SharedPreferences.getInstance();
      final value = prefs.getString('test_key');
      savedValue.value = value ?? 'No value saved';
    }

    Future<void> handleSaveValue() async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('test_key', textController.text);
      savedValue.value = textController.text;
    }

    Future<void> handleIncrementCounter() async {
      final prefs = await SharedPreferences.getInstance();
      counter.value++;
      await prefs.setInt('counter_key', counter.value);
    }

    Future<void> handleLoadCounter() async {
      final prefs = await SharedPreferences.getInstance();
      counter.value = prefs.getInt('counter_key') ?? 0;
    }

    Future<void> handleClearAll() async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.clear();
      counter.value = 0;
      savedValue.value = 'Cleared';
      textController.clear();
    }

    useEffect(() {
      Future<void> initialize() async {
        await handleLoadValue();
        await handleLoadCounter();
        isLoading.value = false;
      }

      initialize();
      return null;
    }, []);

    if (isLoading.value) {
      return const Center(child: Text('Loading...'));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('String Value Test'),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: EditableText(
                  controller: textController,
                  focusNode: FocusNode(),
                  style: const TextStyle(fontSize: 16),
                  cursorColor: const Color(0xFF000000),
                  backgroundCursorColor: const Color(0xFFCCCCCC),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              GestureDetector(
                onTap: handleSaveValue,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: const Text('Save'),
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: handleLoadValue,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: const Text('Load'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text('Saved value: ${savedValue.value}'),
          const SizedBox(height: 32),
          const Text('Counter Test'),
          const SizedBox(height: 8),
          Text('Counter: ${counter.value}'),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: handleIncrementCounter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: const Text('Increment'),
            ),
          ),
          const SizedBox(height: 32),
          GestureDetector(
            onTap: handleClearAll,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: const Text('Clear All'),
            ),
          ),
        ],
      ),
    );
  }
}
