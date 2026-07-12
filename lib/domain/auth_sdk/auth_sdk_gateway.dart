import 'package:result_dart/result_dart.dart';

/// Gateway abstracting the third-party authentication SDK.
///
/// The SDK never returns an access token directly; it returns a login URL.
/// Opening that URL in a WebView lets the auth web server issue the access
/// token as a cookie.
abstract class AuthSdkGateway {
  /// Name of the cookie the login web page issues the access token in.
  static const accessTokenCookieName = 'access_token';

  /// Generates the login URL for the initial sign-in.
  AsyncResult<Uri> generateLoginUrl();

  /// Refreshes the session using the refresh token held inside the SDK and
  /// returns a new login URL that re-issues the access token cookie.
  AsyncResult<Uri> refreshToken();
}
