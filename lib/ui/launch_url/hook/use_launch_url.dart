import 'package:url_launcher/url_launcher.dart';

/// State returned by [useLaunchUrl].
class UseLaunchUrlState {
  const UseLaunchUrlState({
    required this.launchExternalApplication,
    required this.launchInAppBrowserView,
  });

  /// Launches the URL in an external browser app.
  final Future<void> Function() launchExternalApplication;

  /// Launches the URL in an in-app browser view
  /// (Chrome Custom Tabs on Android, SFSafariViewController on iOS).
  /// Falls back to external browser if in-app browser is not supported.
  final Future<void> Function() launchInAppBrowserView;
}

/// Hook that provides URL launching handlers for the given [url].
UseLaunchUrlState useLaunchUrl({required String url}) {
  final uri = Uri.parse(url);

  /// Launches the URL in an external browser app.
  Future<void> handleLaunchExternalApplication() async {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: .externalApplication);
    }
  }

  /// Launches the URL in an in-app browser view.
  /// Falls back to external browser if in-app browser is not supported.
  Future<void> handleLaunchInAppBrowserView() async {
    final supportsInAppBrowser = await supportsLaunchMode(
      .inAppBrowserView,
    );
    final mode = supportsInAppBrowser
        ? LaunchMode.inAppBrowserView
        : LaunchMode.externalApplication;
    await launchUrl(uri, mode: mode);
  }

  return UseLaunchUrlState(
    launchExternalApplication: handleLaunchExternalApplication,
    launchInAppBrowserView: handleLaunchInAppBrowserView,
  );
}
