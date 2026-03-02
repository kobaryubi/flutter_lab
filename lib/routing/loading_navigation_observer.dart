import 'package:flutter/widgets.dart';

/// A [NavigatorObserver] that triggers loading overlay on navigation pushes.
///
/// Skips the first push (initial route) and auto-hides after a fixed duration.
class LoadingNavigationObserver extends NavigatorObserver {
  LoadingNavigationObserver({
    required this.onShowLoading,
    required this.onHideLoading,
  });

  /// Callback to show the loading overlay.
  final VoidCallback onShowLoading;

  /// Callback to hide the loading overlay.
  final VoidCallback onHideLoading;

  bool _isFirstPush = true;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (_isFirstPush) {
      _isFirstPush = false;
      return;
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      onShowLoading();
      Future<void>.delayed(const Duration(milliseconds: 800), onHideLoading);
    });
  }
}
