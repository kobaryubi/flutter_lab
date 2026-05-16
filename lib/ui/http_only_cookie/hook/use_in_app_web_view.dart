import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

/// State returned by the [useInAppWebView] hook.
class InAppWebViewState {
  const InAppWebViewState({
    required this.controller,
    required this.isLoaded,
    required this.onWebViewCreated,
    required this.onLoadStop,
  });

  /// The WebView controller, or `null` until the WebView is created.
  final InAppWebViewController? controller;

  /// Whether the WebView has finished loading a page at least once.
  final bool isLoaded;

  /// Handler for `InAppWebView.onWebViewCreated`; captures the controller.
  final void Function(InAppWebViewController controller) onWebViewCreated;

  /// Handler for `InAppWebView.onLoadStop`; marks the page as loaded.
  final void Function(InAppWebViewController controller, WebUri? url)
  onLoadStop;
}

/// Hook that manages an [InAppWebView]'s controller and load state.
///
/// `InAppWebView` creates its controller internally, so this hook owns the
/// `controller` and `isLoaded` state and exposes the handlers to wire into
/// the widget.
InAppWebViewState useInAppWebView() {
  final controller = useState<InAppWebViewController?>(null);
  final isLoaded = useState(false);

  /// Captures the controller once the WebView is created.
  void onWebViewCreated(InAppWebViewController webViewController) {
    controller.value = webViewController;
  }

  /// Marks the WebView as loaded once a page finishes loading.
  void onLoadStop(InAppWebViewController webViewController, WebUri? url) {
    isLoaded.value = true;
  }

  return InAppWebViewState(
    controller: controller.value,
    isLoaded: isLoaded.value,
    onWebViewCreated: onWebViewCreated,
    onLoadStop: onLoadStop,
  );
}
