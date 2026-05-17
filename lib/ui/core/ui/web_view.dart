import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_lab/flavors.dart';
import 'package:flutter_lab/ui/core/hook/use_in_app_web_view.dart';

/// Common widget wrapping the `flutter_inappwebview` WebView.
///
/// Wires the WebView to the [state] produced by `useInAppWebView`,
/// capturing the controller through `onWebViewCreated`.
class WebView extends StatelessWidget {
  const WebView({
    required this.state,
    this.url,
    this.initialUserScripts,
    this.shouldOverrideUrlLoading,
    super.key,
  });

  /// State produced by the `useInAppWebView` hook.
  final InAppWebViewState state;

  /// URL loaded by the WebView, or `null` to start blank (the URL can be
  /// loaded later through the controller).
  final String? url;

  /// User scripts injected when the WebView is created.
  final UnmodifiableListView<UserScript>? initialUserScripts;

  /// Decides whether a navigation should proceed; invoked for every
  /// navigation when provided.
  final Future<NavigationActionPolicy?> Function(
    InAppWebViewController controller,
    NavigationAction navigationAction,
  )?
  shouldOverrideUrlLoading;

  @override
  Widget build(BuildContext context) {
    final userAgent = state.userAgent;

    if (userAgent == null) {
      return const Center(child: Text('preparing WebView...'));
    }

    return InAppWebView(
      initialUrlRequest: switch (url) {
        final url? => URLRequest(url: WebUri(url)),
        null => null,
      },
      initialUserScripts: initialUserScripts,
      initialSettings: InAppWebViewSettings(
        isInspectable: F.appFlavor != .production,
        userAgent: userAgent,
        useShouldOverrideUrlLoading: true,
      ),
      onWebViewCreated: state.onWebViewCreated,
      onLoadStart: state.onLoadStart,
      onLoadStop: state.onLoadStop,
      onReceivedError: state.onReceivedError,
      onReceivedHttpError: state.onReceivedHttpError,
      shouldOverrideUrlLoading: shouldOverrideUrlLoading,
    );
  }
}
