import 'package:flutter_lab/ui/webview_cookie/util/cookie_parser.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CookieParser.parse', () {
    test('returns empty map for empty input', () {
      expect(CookieParser.parse(raw: ''), isEmpty);
    });

    test('parses a single name/value pair', () {
      expect(
        CookieParser.parse(raw: 'foo=bar'),
        {'foo': 'bar'},
      );
    });

    test('parses multiple pairs separated by "; "', () {
      expect(
        CookieParser.parse(raw: 'foo=bar; baz=qux; theme=dark'),
        {'foo': 'bar', 'baz': 'qux', 'theme': 'dark'},
      );
    });

    test('trims whitespace around names and values', () {
      expect(
        CookieParser.parse(raw: '  foo = bar  ;  baz=qux  '),
        {'foo': 'bar', 'baz': 'qux'},
      );
    });

    test('skips pairs without "="', () {
      expect(
        CookieParser.parse(raw: 'foo=bar; broken; baz=qux'),
        {'foo': 'bar', 'baz': 'qux'},
      );
    });

    test('skips pairs with empty name', () {
      expect(
        CookieParser.parse(raw: '=value; foo=bar'),
        {'foo': 'bar'},
      );
    });

    test('preserves "=" inside the value', () {
      expect(
        CookieParser.parse(raw: 'token=abc=def=ghi'),
        {'token': 'abc=def=ghi'},
      );
    });

    test('keeps an empty value when "=" has nothing after it', () {
      expect(
        CookieParser.parse(raw: 'foo='),
        {'foo': ''},
      );
    });

    test('ignores empty entries between separators', () {
      expect(
        CookieParser.parse(raw: 'foo=bar;;baz=qux'),
        {'foo': 'bar', 'baz': 'qux'},
      );
    });
  });
}
