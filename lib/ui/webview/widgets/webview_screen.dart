import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:flutter_lab/ui/core/ui/scaffold.dart';
import 'package:logging/logging.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends HookWidget {
  const WebViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBar(title: Text('WebView')),
      body: _Body(),
    );
  }
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final log = Logger('WebViewScreen');

    final loadingPercentage = useState(0);
    final navigationDelegate = useMemoized(
      () => NavigationDelegate(
        onPageStarted: (_) {
          loadingPercentage.value = 0;
        },
        onProgress: (progress) {
          loadingPercentage.value = progress;
        },
        onPageFinished: (_) {
          loadingPercentage.value = 100;
        },
      ),
      [],
    );
    final webViewController = useMemoized(
      WebViewController.new,
      [],
    );

    final onRunJavaScriptButtonPressed = useCallback(() async {
      await webViewController.runJavaScript('''
        var req = new XMLHttpRequest();
        req.open('GET', "https://api.ipify.org/?format=json");
        req.onload = function() {
          if (req.status == 200) {
            let response = JSON.parse(req.responseText);
            window.webkit.messageHandlers.message.postMessage("IP Address: " + response.ip);
          } else {
            window.webkit.messageHandlers.message.postMessage("Error: " + req.status);
          }
        }
        req.send();''');
    }, [webViewController]);

    useEffect(() {
      webViewController
        ..setNavigationDelegate(navigationDelegate)
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(Uri.parse('https://flutter.dev'))
        ..addJavaScriptChannel(
          'message',
          onMessageReceived: (message) {
            log.info('JavaScript message: ${message.message}');
          },
        );
      return null;
    }, [webViewController]);

    return Stack(
      children: [
        WebViewWidget(controller: webViewController),
        if (loadingPercentage.value < 100)
          Text('Loading... ${loadingPercentage.value}%'),
        Positioned(
          bottom: 16,
          right: 16,
          child: Button(
            onTap: onRunJavaScriptButtonPressed,
            label: 'run javascript',
          ),
        ),
      ],
    );
  }
}

@Preview(name: 'WebViewScreen')
Widget preview() => const _Body();
