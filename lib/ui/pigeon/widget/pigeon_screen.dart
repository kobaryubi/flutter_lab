import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/pigeon/view_model/pigeon_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen for demonstrating Pigeon platform channel communication.
class PigeonScreen extends StatelessWidget {
  const PigeonScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Pigeon')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(pigeonViewModelProvider);
    final vm = ref.read(pigeonViewModelProvider.notifier);

    /// Calls GreetingApi.greet via Pigeon.
    void handleGreet() {
      vm.greet();
    }

    /// Calls ExampleHostApi.getHostLanguage via Pigeon.
    void handleGetHostLanguage() {
      vm.getHostLanguage();
    }

    /// Calls ExampleHostApi.add via Pigeon.
    void handleAdd() {
      vm.add();
    }

    /// Calls ExampleHostApi.sendMessage via Pigeon.
    void handleSendMessage() {
      vm.sendMessage();
    }

    /// Sets up MessageFlutterApi handler.
    void handleCallFlutterMethod() {
      vm.callFlutterMethod();
    }

    return SingleChildScrollView(
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          GestureDetector(
            onTap: handleGreet,
            child: const Text('Greet'),
          ),
          if (uiState.greeting case AsyncData(:final value))
            Text('Greeting: $value'),
          if (uiState.greeting case AsyncError(:final error))
            Text('Error: $error'),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: handleGetHostLanguage,
            child: const Text('Get Host Language'),
          ),
          if (uiState.hostLanguage case AsyncData(:final value))
            Text('Host Language: $value'),
          if (uiState.hostLanguage case AsyncError(:final error))
            Text('Error: $error'),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: handleAdd,
            child: const Text('Add (3 + 5)'),
          ),
          if (uiState.addResult case AsyncData(:final value))
            Text('Add Result: $value'),
          if (uiState.addResult case AsyncError(:final error))
            Text('Error: $error'),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: handleSendMessage,
            child: const Text('Send Message'),
          ),
          if (uiState.sendMessageResult case AsyncData(:final value))
            Text('Send Message Result: $value'),
          if (uiState.sendMessageResult case AsyncError(:final error))
            Text('Error: $error'),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: handleCallFlutterMethod,
            child: const Text('Call Flutter Method'),
          ),
          if (uiState.flutterMethodResult case AsyncData(:final value))
            Text('Flutter Method Result: $value'),
          if (uiState.flutterMethodResult case AsyncError(:final error))
            Text('Error: $error'),
        ],
      ),
    );
  }
}
