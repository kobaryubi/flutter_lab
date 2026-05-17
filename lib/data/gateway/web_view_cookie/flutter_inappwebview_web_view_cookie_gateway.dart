import 'package:flutter_inappwebview/flutter_inappwebview.dart' as inappwebview;
import 'package:flutter_lab/application/web_view_cookie/web_view_cookie_gateway.dart';
import 'package:flutter_lab/data/mapper/web_view_cookie/cookie_mapper.dart';
import 'package:flutter_lab/domain/entity/cookie/cookie.dart';
import 'package:flutter_lab/domain/entity/exception/domain_exception.dart';
import 'package:result_dart/result_dart.dart';

/// `flutter_inappwebview` implementation of [WebViewCookieGateway].
class FlutterInappwebviewWebViewCookieGateway implements WebViewCookieGateway {
  final inappwebview.CookieManager _cookieManager =
      inappwebview.CookieManager.instance();
  final CookieMapper _mapper = const CookieMapper();

  @override
  AsyncResult<List<Cookie>> getCookies({required Uri url}) async {
    try {
      final sdkCookies = await _cookieManager.getCookies(
        url: inappwebview.WebUri(url.toString()),
      );

      return Success(
        _mapper.convertList<inappwebview.Cookie, Cookie>(sdkCookies),
      );
    } on Exception {
      return const Failure(DomainException.unknown());
    }
  }

  @override
  AsyncResult<Cookie> getCookie({
    required Uri url,
    required String name,
  }) async {
    try {
      final sdkCookie = await _cookieManager.getCookie(
        url: inappwebview.WebUri(url.toString()),
        name: name,
      );

      if (sdkCookie == null) {
        return const Failure(DomainException.notFound());
      }

      return Success(_mapper.convert<inappwebview.Cookie, Cookie>(sdkCookie));
    } on Exception {
      return const Failure(DomainException.unknown());
    }
  }

  @override
  AsyncResult<Unit> setCookie({
    required Uri url,
    required String name,
    required String value,
  }) async {
    try {
      await _cookieManager.setCookie(
        url: inappwebview.WebUri(url.toString()),
        name: name,
        value: value,
      );

      return const Success(unit);
    } on Exception {
      return const Failure(DomainException.unknown());
    }
  }

  @override
  AsyncResult<Unit> deleteCookie({
    required Uri url,
    required String name,
  }) async {
    try {
      await _cookieManager.deleteCookie(
        url: inappwebview.WebUri(url.toString()),
        name: name,
      );

      return const Success(unit);
    } on Exception {
      return const Failure(DomainException.unknown());
    }
  }

  @override
  AsyncResult<Unit> deleteCookies({required Uri url}) async {
    try {
      await _cookieManager.deleteCookies(
        url: inappwebview.WebUri(url.toString()),
      );

      return const Success(unit);
    } on Exception {
      return const Failure(DomainException.unknown());
    }
  }

  @override
  AsyncResult<Unit> deleteAllCookies() async {
    try {
      await _cookieManager.deleteAllCookies();

      return const Success(unit);
    } on Exception {
      return const Failure(DomainException.unknown());
    }
  }
}
