import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// Load status for WebView.
enum WebViewLoadStatus {
  /// Initial state before loading starts.
  initial,

  /// Page is currently loading.
  loading,

  /// Page loaded successfully.
  loaded,

  /// Page failed to load.
  error,
}

/// State returned by [useWebView] hook.
class WebViewState {
  const WebViewState({
    required this.controller,
    required this.status,
  });

  /// The WebView controller.
  final WebViewController controller;

  /// Current load status.
  final WebViewLoadStatus status;

  /// Whether the page is currently loading.
  bool get isLoading => status == WebViewLoadStatus.loading;

  /// Whether the page has loaded successfully.
  bool get isLoaded => status == WebViewLoadStatus.loaded;
}

/// Configuration options for [useWebView].
class WebViewConfig {
  const WebViewConfig();
}

/// Hook that manages WebView state and provides load status.
///
/// Returns a [WebViewState] with the controller, load status,
/// and navigation actions.
WebViewState useWebView({
  String? initialUrl,
  WebViewConfig config = const WebViewConfig(),
}) {
  final status = useState(WebViewLoadStatus.initial);
  final controller = useMemoized(WebViewController.new, []);

  /// Handles page load started event.
  void handlePageStarted(String url) {
    status.value = WebViewLoadStatus.loading;
  }

  /// Handles page load finished event.
  void handlePageFinished(String url) {
    status.value = WebViewLoadStatus.loaded;
  }

  /// Handles web resource error event.
  void handleWebResourceError(WebResourceError resourceError) {
    status.value = WebViewLoadStatus.error;
  }

  /// Handles HTTP error event.
  void handleHttpError(HttpResponseError httpError) {
    if (httpError.response?.statusCode != null &&
        httpError.response!.statusCode >= 400) {
      status.value = WebViewLoadStatus.error;
    }
  }

  useEffect(() {
    final delegate = NavigationDelegate(
      onPageStarted: handlePageStarted,
      onPageFinished: handlePageFinished,
      onWebResourceError: handleWebResourceError,
      onHttpError: handleHttpError,
    );

    controller
      ..setNavigationDelegate(delegate)
      ..setJavaScriptMode(JavaScriptMode.unrestricted);

    if (initialUrl != null) {
      controller.loadRequest(Uri.parse(initialUrl));
    }

    return null;
  }, []);

  return WebViewState(
    controller: controller,
    status: status.value,
  );
}
