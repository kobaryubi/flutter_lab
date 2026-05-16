import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

/// State returned by the [useInAppWebView] hook.
class InAppWebViewState {
  const InAppWebViewState({
    required this.controller,
    required this.onWebViewCreated,
  });

  /// The WebView controller, or `null` until the WebView is created.
  final InAppWebViewController? controller;

  /// Handler for `InAppWebView.onWebViewCreated`; captures the controller.
  final void Function(InAppWebViewController controller) onWebViewCreated;
}

/// Hook that manages an [InAppWebView]'s controller.
///
/// `InAppWebView` creates its controller internally, so this hook owns the
/// `controller` state and exposes the handler to wire into the widget.
InAppWebViewState useInAppWebView() {
  final controller = useState<InAppWebViewController?>(null);

  /// Captures the controller once the WebView is created.
  void onWebViewCreated(InAppWebViewController webViewController) {
    controller.value = webViewController;
  }

  return InAppWebViewState(
    controller: controller.value,
    onWebViewCreated: onWebViewCreated,
  );
}
