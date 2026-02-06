import 'package:flutter_lab/domain/entity/navigation/url_navigation_list.dart';
import 'package:flutter_lab/domain/navigation/url_navigation_list_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Mock implementation that returns hardcoded blacklist and whitelist data.
class MockUrlNavigationListRepository extends UrlNavigationListRepository {
  @override
  AsyncResult<UrlNavigationList> getNavigationList() async =>
      const UrlNavigationList(
        blackList: [
          'evil.com/malware',
          'phishing.example.com',
        ],
        whiteList: [
          'myapp.com',
          'trusted.example.com/content',
        ],
      ).toSuccess();
}
