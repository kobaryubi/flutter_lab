import 'package:flutter_lab/domain/entity/navigation/url_navigation_list.dart';
import 'package:flutter_lab/presentation/core/mixin/url_navigation_mixin.dart';
import 'package:flutter_lab/ui/url_navigation/ui_state/url_navigation_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'url_navigation_view_model.g.dart';

/// ViewModel that fetches the URL navigation list.
@riverpod
class UrlNavigationViewModel extends _$UrlNavigationViewModel
    with UrlNavigationMixin {
  @override
  UrlNavigationUiState build() {
    return const UrlNavigationUiState(urlNavigationList: .loading());
  }

  @override
  UrlNavigationList? get urlNavigationList => state.urlNavigationList.value;

  /// Fetches the navigation list using [UrlNavigationMixin].
  Future<void> fetch() async {
    state = state.copyWith(
      urlNavigationList: await AsyncValue.guard(fetchUrlNavigationList),
    );
  }
}
