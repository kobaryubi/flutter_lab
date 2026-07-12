import 'package:result_dart/result_dart.dart';

/// Repository holding the access token issued by the auth web server.
abstract class AccessTokenRepository {
  /// Saves [accessToken] as the current access token, replacing any
  /// previously saved one.
  Result<Unit> saveAccessToken({required String accessToken});

  /// Returns the current access token.
  ///
  /// Fails when no access token has been saved yet.
  Result<String> getAccessToken();
}
