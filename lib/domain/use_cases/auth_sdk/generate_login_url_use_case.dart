import 'package:flutter_lab/domain/auth_sdk/auth_sdk_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that generates the login URL for the initial sign-in.
class GenerateLoginUrlUseCase {
  GenerateLoginUrlUseCase({required AuthSdkGateway authSdkGateway})
    : _authSdkGateway = authSdkGateway;

  final AuthSdkGateway _authSdkGateway;

  /// Returns the login URL to open in a WebView so the auth web server can
  /// issue the access token cookie.
  AsyncResult<Uri> call() => _authSdkGateway.generateLoginUrl();
}
