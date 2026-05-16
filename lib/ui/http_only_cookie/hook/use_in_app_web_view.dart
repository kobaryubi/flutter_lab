import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

/// Suffix appended to the WebView's default user agent.
const String _userAgentSuffix = 'flutter_lab-http-only-cookie/1.0';

/// State returned by the [useInAppWebView] hook.
class InAppWebViewState {
  const InAppWebViewState({
    required this.controller,
    required this.isLoaded,
    required this.userAgent,
    required this.onWebViewCreated,
    required this.onLoadStop,
  });

  /// The WebView controller, or `null` until the WebView is created.
  final InAppWebViewController? controller;

  /// Whether the WebView has finished loading a page at least once.
  final bool isLoaded;

  /// Resolved user agent, or `null` until it has been resolved.
  final String? userAgent;

  /// Handler for `InAppWebView.onWebViewCreated`; captures the controller.
  final void Function(InAppWebViewController controller) onWebViewCreated;

  /// Handler for `InAppWebView.onLoadStop`; marks the page as loaded.
  final void Function(InAppWebViewController controller, WebUri? url)
  onLoadStop;
}

/// Hook that manages an [InAppWebView]'s controller, load state, and user
/// agent.
///
/// `InAppWebView` creates its controller internally, so this hook owns the
/// `controller`, `isLoaded`, and `userAgent` state and exposes the handlers
/// to wire into the widget.
///
/// The resolved user agent is the platform default with [_userAgentSuffix]
/// appended.
InAppWebViewState useInAppWebView() {
  final controller = useState<InAppWebViewController?>(null);
  final isLoaded = useState(false);
  final userAgent = useState<String?>(null);

  useEffect(() {
    var isDisposed = false;

    /// Resolves the user agent by appending [_userAgentSuffix] to the
    /// platform default.
    Future<void> resolveUserAgent() async {
      final defaultUserAgent =
          await InAppWebViewController.getDefaultUserAgent();

      if (isDisposed) {
        return;
      }

      userAgent.value = '$defaultUserAgent $_userAgentSuffix';
    }

    resolveUserAgent();

    return () => isDisposed = true;
  }, []);

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
    userAgent: userAgent.value,
    onWebViewCreated: onWebViewCreated,
    onLoadStop: onLoadStop,
  );
}
