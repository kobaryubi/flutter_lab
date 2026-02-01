import 'package:flutter_lab/domain/models/navigation/url_navigation_list.dart';
import 'package:result_dart/result_dart.dart';

/// Repository for fetching URL navigation blacklist and whitelist.
abstract class UrlNavigationListRepository {
  /// Returns the navigation list containing blacklist and whitelist entries.
  AsyncResult<UrlNavigationList> getNavigationList();
}
