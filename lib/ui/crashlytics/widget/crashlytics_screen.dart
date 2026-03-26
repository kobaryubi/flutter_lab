import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen for testing Firebase Crashlytics error handlers.
class CrashlyticsScreen extends StatelessWidget {
  const CrashlyticsScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Crashlytics')),
    child: _Body(),
  );
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    /// Throws an exception caught by FlutterError.onError.
    void handleFlutterError() {
      throw Exception('Test FlutterError.onError');
    }

    /// Throws an asynchronous exception caught by PlatformDispatcher.onError.
    void handlePlatformDispatcherError() {
      Future.delayed(Duration.zero, () {
        throw Exception('Test PlatformDispatcher.instance.onError');
      });
    }

    return Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          GestureDetector(
            onTap: handleFlutterError,
            child: const Text('Throw FlutterError'),
          ),

          const SizedBox(height: 32),

          GestureDetector(
            onTap: handlePlatformDispatcherError,
            child: const Text('Throw PlatformDispatcher Error'),
          ),
        ],
      ),
    );
  }
}
