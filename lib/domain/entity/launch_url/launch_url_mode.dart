/// Mode for launching a URL.
enum LaunchUrlMode {
  /// Launches the URL in an external browser app.
  externalApplication,

  /// Launches the URL in an in-app browser view
  /// (Chrome Custom Tabs on Android, SFSafariViewController on iOS).
  inAppBrowserView,
}
