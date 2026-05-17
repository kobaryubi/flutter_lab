import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

/// Suffix appended to the WebView's default user agent.
const String _userAgentSuffix = 'flutter_lab-http-only-cookie/1.0';

/// Load status of an [InAppWebView].
enum WebViewLoadStatus {
  /// A page is currently loading.
  loading,

  /// A page finished loading.
  loaded,

  /// A page failed to load.
  error,
}

/// State returned by the [useInAppWebView] hook.
class InAppWebViewState {
  const InAppWebViewState({
    required this.controller,
    required this.status,
    required this.userAgent,
    required this.onWebViewCreated,
    required this.onLoadStart,
    required this.onLoadStop,
    required this.onReceivedError,
    required this.onReceivedHttpError,
  });

  /// The WebView controller, or `null` until the WebView is created.
  final InAppWebViewController? controller;

  /// Load status of the current page.
  final WebViewLoadStatus status;

  /// Resolved user agent, or `null` until it has been resolved.
  final String? userAgent;

  /// Handler for `InAppWebView.onWebViewCreated`; captures the controller.
  final void Function(InAppWebViewController controller) onWebViewCreated;

  /// Handler for `InAppWebView.onLoadStart`; marks the page as loading.
  final void Function(InAppWebViewController controller, WebUri? url)
  onLoadStart;

  /// Handler for `InAppWebView.onLoadStop`; marks the page as loaded.
  final void Function(InAppWebViewController controller, WebUri? url)
  onLoadStop;

  /// Handler for `InAppWebView.onReceivedError`; marks the page as failed.
  final void Function(
    InAppWebViewController controller,
    WebResourceRequest request,
    WebResourceError error,
  )
  onReceivedError;

  /// Handler for `InAppWebView.onReceivedHttpError`; marks the page as
  /// failed.
  final void Function(
    InAppWebViewController controller,
    WebResourceRequest request,
    WebResourceResponse errorResponse,
  )
  onReceivedHttpError;
}

/// Hook that manages an [InAppWebView]'s controller, load status, and user
/// agent.
///
/// `InAppWebView` creates its controller internally, so this hook owns the
/// `controller`, `status`, and `userAgent` state and exposes the handlers
/// to wire into the widget.
///
/// The resolved user agent is the platform default with [_userAgentSuffix]
/// appended.
InAppWebViewState useInAppWebView() {
  final controller = useState<InAppWebViewController?>(null);
  final status = useState(WebViewLoadStatus.loading);
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

  /// Marks the WebView as loading once a page starts loading.
  void onLoadStart(InAppWebViewController webViewController, WebUri? url) {
    status.value = .loading;
  }

  /// Marks the WebView as loaded once a page finishes loading.
  void onLoadStop(InAppWebViewController webViewController, WebUri? url) {
    status.value = .loaded;
  }

  /// Marks the WebView as failed once a load error is received.
  void onReceivedError(
    InAppWebViewController webViewController,
    WebResourceRequest request,
    WebResourceError error,
  ) {
    status.value = .error;
  }

  /// Marks the WebView as failed once an HTTP error response is received.
  void onReceivedHttpError(
    InAppWebViewController webViewController,
    WebResourceRequest request,
    WebResourceResponse errorResponse,
  ) {
    status.value = .error;
  }

  return InAppWebViewState(
    controller: controller.value,
    status: status.value,
    userAgent: userAgent.value,
    onWebViewCreated: onWebViewCreated,
    onLoadStart: onLoadStart,
    onLoadStop: onLoadStop,
    onReceivedError: onReceivedError,
    onReceivedHttpError: onReceivedHttpError,
  );
}
