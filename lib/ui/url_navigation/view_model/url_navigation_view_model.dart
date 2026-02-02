import 'package:flutter_lab/domain/models/navigation/url_navigation_list.dart';
import 'package:flutter_lab/presentation/core/mixin/url_navigation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'url_navigation_view_model.g.dart';

/// ViewModel that fetches the URL navigation list.
@riverpod
class UrlNavigationViewModel extends _$UrlNavigationViewModel
    with UrlNavigationMixin {
  @override
  AsyncValue<UrlNavigationList> build() {
    return const .loading();
  }

  /// Fetches the navigation list using [UrlNavigationMixin].
  Future<void> fetch() async {
    state = await AsyncValue.guard(fetchUrlNavigationList);
  }
}
