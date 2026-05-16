import 'package:flutter/widgets.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart'
    as flutter_inappwebview;
import 'package:flutter_lab/ui/http_only_cookie/hook/use_in_app_web_view.dart';

/// Common widget wrapping the `flutter_inappwebview` WebView.
///
/// Wires the WebView to the [state] produced by `useInAppWebView`,
/// capturing the controller through `onWebViewCreated`.
class InAppWebView extends StatelessWidget {
  const InAppWebView({required this.state, super.key});

  /// State produced by the `useInAppWebView` hook.
  final InAppWebViewState state;

  @override
  Widget build(BuildContext context) => flutter_inappwebview.InAppWebView(
    onWebViewCreated: state.onWebViewCreated,
  );
}
