import 'package:flutter_lab/domain/entity/navigation/navigation_destination.dart';
import 'package:flutter_lab/domain/entity/navigation/url_navigation_list.dart';

/// Determines the [NavigationDestination] for a given URL
/// using blacklist and whitelist entries.
class DetermineNavigationDestinationUseCase {
  /// Returns the [NavigationDestination] for the given [url].
  NavigationDestination call({
    required String url,
    required List<String> blackList,
    required List<String> whiteList,
  }) {
    final urlNavigationList = UrlNavigationList(
      blackList: blackList,
      whiteList: whiteList,
    );
    return urlNavigationList.destinationFor(url: url);
  }
}
