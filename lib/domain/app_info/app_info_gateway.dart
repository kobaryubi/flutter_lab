/// Gateway interface for retrieving app metadata such as the version.
abstract class AppInfoGateway {
  /// Returns the app version string (e.g. `"1.0.1"`).
  Future<String> getVersion();

  /// Returns the build number string (e.g. `"2"`).
  Future<String> getBuildNumber();
}
