import 'package:flutter_lab/domain/entity/navigation/navigation_destination.dart';
import 'package:flutter_lab/domain/entity/navigation/url_navigation_list.dart';
import 'package:flutter_lab/ui/shared/provider/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Mixin that provides URL navigation fetching and determination logic.
///
/// Requires [ref] to be available (satisfied by Riverpod Notifiers).
mixin UrlNavigationMixin {
  /// Ref for reading providers.
  Ref get ref;

  /// Fetches the URL navigation list from the use case.
  Future<UrlNavigationList> fetchUrlNavigationList() async {
    final useCase = ref.read(getUrlNavigationListUseCaseProvider);
    final result = await useCase.call();
    return result.getOrThrow();
  }

  /// Determines the navigation destination for the given [url].
  ///
  /// Falls back to [NavigationDestination.externalBrowser] when
  /// [urlNavigationList] is null.
  NavigationDestination determineNavigationDestination({
    required String url,
    required UrlNavigationList? urlNavigationList,
  }) {
    if (urlNavigationList == null) {
      return .externalBrowser;
    }
    final useCase = ref.read(
      determineNavigationDestinationUseCaseProvider,
    );
    return useCase.call(
      url: url,
      blackList: urlNavigationList.blackList,
      whiteList: urlNavigationList.whiteList,
    );
  }
}
