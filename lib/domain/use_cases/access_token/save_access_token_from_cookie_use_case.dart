import 'package:flutter_lab/application/web_view_cookie/web_view_cookie_gateway.dart';
import 'package:flutter_lab/domain/access_token/access_token_repository.dart';
import 'package:flutter_lab/domain/auth_sdk/auth_sdk_gateway.dart';
import 'package:flutter_lab/domain/entity/exception/domain_exception.dart';
import 'package:flutter_lab/domain/value_object/cookie/cookie.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that extracts the access token cookie issued by the login web
/// page and saves it as the current access token.
class SaveAccessTokenFromCookieUseCase {
  SaveAccessTokenFromCookieUseCase({
    required WebViewCookieGateway webViewCookieGateway,
    required AccessTokenRepository accessTokenRepository,
  }) : _webViewCookieGateway = webViewCookieGateway,
       _accessTokenRepository = accessTokenRepository;

  final WebViewCookieGateway _webViewCookieGateway;
  final AccessTokenRepository _accessTokenRepository;

  /// Reads the access token cookie stored for [url] and saves its value.
  ///
  /// Fails when the cookie does not exist or has no value.
  AsyncResult<Unit> call({required Uri url}) => _webViewCookieGateway
      .getCookie(url: url, name: AuthSdkGateway.accessTokenCookieName)
      .flatMap(_saveCookieValue);

  /// Saves the value of [cookie] as the current access token.
  Result<Unit> _saveCookieValue(Cookie cookie) {
    final value = cookie.value;

    return value == null
        ? const DomainException.notFound().toFailure()
        : _accessTokenRepository.saveAccessToken(accessToken: value);
  }
}
