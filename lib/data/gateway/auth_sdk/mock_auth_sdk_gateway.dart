import 'package:flutter_lab/domain/auth_sdk/auth_sdk_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Mock implementation of [AuthSdkGateway] simulating the third-party SDK.
///
/// Login URLs point at httpbin.org, whose `/cookies/set/{name}/{value}`
/// endpoint issues the embedded access token as a cookie and then redirects,
/// mimicking the auth web server.
class MockAuthSdkGateway implements AuthSdkGateway {
  /// Access token embedded in the initial login URL.
  ///
  /// The mock API treats it as expired to force the refresh flow.
  static const expiredAccessToken = 'expired-access-token';

  /// Access token embedded in the login URL issued after a refresh.
  ///
  /// The mock API accepts it.
  static const refreshedAccessToken = 'refreshed-access-token';

  static const _loginHost = 'httpbin.org';

  @override
  AsyncResult<Uri> generateLoginUrl() async =>
      _buildLoginUrl(accessToken: expiredAccessToken).toSuccess();

  @override
  AsyncResult<Uri> refreshToken() async =>
      _buildLoginUrl(accessToken: refreshedAccessToken).toSuccess();

  Uri _buildLoginUrl({required String accessToken}) => Uri.https(
    _loginHost,
    '/cookies/set/${AuthSdkGateway.accessTokenCookieName}/$accessToken',
  );
}
