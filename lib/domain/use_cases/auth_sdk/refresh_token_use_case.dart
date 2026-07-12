import 'package:flutter_lab/domain/auth_sdk/auth_sdk_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that refreshes the session after the access token expires.
class RefreshTokenUseCase {
  RefreshTokenUseCase({required AuthSdkGateway authSdkGateway})
    : _authSdkGateway = authSdkGateway;

  final AuthSdkGateway _authSdkGateway;

  /// Refreshes the session using the SDK's refresh token and returns a new
  /// login URL that re-issues the access token cookie when opened in a
  /// WebView.
  AsyncResult<Uri> call() => _authSdkGateway.refreshToken();
}
