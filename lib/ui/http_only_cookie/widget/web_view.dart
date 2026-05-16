import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_lab/ui/http_only_cookie/hook/use_in_app_web_view.dart';

/// Common widget wrapping the `flutter_inappwebview` WebView.
///
/// Wires the WebView to the [state] produced by `useInAppWebView`,
/// capturing the controller through `onWebViewCreated`.
class WebView extends StatelessWidget {
  const WebView({
    required this.state,
    required this.url,
    this.initialUserScripts,
    super.key,
  });

  /// State produced by the `useInAppWebView` hook.
  final InAppWebViewState state;

  /// URL loaded by the WebView.
  final String url;

  /// User scripts injected when the WebView is created.
  final UnmodifiableListView<UserScript>? initialUserScripts;

  @override
  Widget build(BuildContext context) => InAppWebView(
    initialUrlRequest: URLRequest(url: WebUri(url)),
    initialUserScripts: initialUserScripts,
    initialSettings: InAppWebViewSettings(),
    onWebViewCreated: state.onWebViewCreated,
    onLoadStop: state.onLoadStop,
  );
}
