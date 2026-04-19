import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// HTML content with elements that have IDs for JavaScript interaction.
const _htmlContent = '''
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
  <h1 id="title">Hello from WebView</h1>
  <p id="message">This is a sample message.</p>
  <input id="username" type="text" value="flutter_user" />
</body>
</html>
''';

/// Screen demonstrating JavaScript execution in WebView.
///
/// Shows how to use `runJavaScriptReturningResult` to get
/// element values by ID from the loaded HTML.
class WebViewJavascriptScreen extends HookWidget {
  const WebViewJavascriptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useMemoized(WebViewController.new, []);
    final result = useState<String?>(null);
    final isLoaded = useState(false);

    useEffect(() {
      controller
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(
          NavigationDelegate(
            onPageFinished: (_) {
              /// Presets the username input value after the page loads.
              controller.runJavaScript(
                'document.getElementById("username").value = "preset_user"',
              );
              isLoaded.value = true;
            },
          ),
        )
        ..loadHtmlString(_htmlContent);

      return null;
    }, []);

    /// Gets the text content of the element with id="title".
    Future<void> handleGetTitle() async {
      final value = await controller.runJavaScriptReturningResult(
        'document.getElementById("title").innerText',
      );

      result.value = 'title: $value';
    }

    /// Gets the text content of the element with id="message".
    Future<void> handleGetMessage() async {
      final value = await controller.runJavaScriptReturningResult(
        'document.getElementById("message").innerText',
      );

      result.value = 'message: $value';
    }

    /// Gets the value of the input element with id="username".
    Future<void> handleGetInputValue() async {
      final value = await controller.runJavaScriptReturningResult(
        'document.getElementById("username").value',
      );

      result.value = 'username: $value';
    }

    /// Sets the text content of the element with id="title" to a new value.
    Future<void> handleSetTitle() async {
      await controller.runJavaScript(
        'document.getElementById("title").innerText = "Updated by Flutter"',
      );

      result.value = 'title set to: Updated by Flutter';
    }

    return Layout(
      appBar: const AppBar(title: Text('WebView JavaScript')),
      child: Column(
        spacing: 8,
        children: [
          Row(
            spacing: 8,
            children: [
              GestureDetector(
                onTap: isLoaded.value ? handleGetTitle : null,
                child: const Text('[Get Title]'),
              ),
              GestureDetector(
                onTap: isLoaded.value ? handleGetMessage : null,
                child: const Text('[Get Message]'),
              ),
              GestureDetector(
                onTap: isLoaded.value ? handleGetInputValue : null,
                child: const Text('[Get Input]'),
              ),
              GestureDetector(
                onTap: isLoaded.value ? handleSetTitle : null,
                child: const Text('[Set Title]'),
              ),
            ],
          ),

          if (result.value != null) Text('Result: ${result.value}'),

          Expanded(child: WebViewWidget(controller: controller)),
        ],
      ),
    );
  }
}
