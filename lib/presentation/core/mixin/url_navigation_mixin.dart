import 'package:flutter_lab/domain/models/navigation/url_navigation_list.dart';
import 'package:flutter_lab/ui/url_navigation/provider/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Mixin that provides URL navigation list fetching logic.
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
}
