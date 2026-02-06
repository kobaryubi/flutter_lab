import 'package:flutter_lab/domain/entity/navigation/url_navigation_list.dart';
import 'package:flutter_lab/domain/navigation/url_navigation_list_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Fetches the URL navigation list from the repository.
class GetUrlNavigationListUseCase {
  GetUrlNavigationListUseCase({
    required UrlNavigationListRepository urlNavigationListRepository,
  }) : _urlNavigationListRepository = urlNavigationListRepository;

  final UrlNavigationListRepository _urlNavigationListRepository;

  /// Returns the navigation list containing blacklist and whitelist.
  AsyncResult<UrlNavigationList> call() =>
      _urlNavigationListRepository.getNavigationList();
}
