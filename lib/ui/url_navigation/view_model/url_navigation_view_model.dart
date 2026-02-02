import 'package:flutter_lab/domain/entity/navigation/navigation_destination.dart';
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

  /// Fetches the navigation list using [UrlNavigationMixin].
  Future<void> fetch() async {
    state = state.copyWith(
      urlNavigationList: await AsyncValue.guard(fetchUrlNavigationList),
    );
  }

  /// Determines the navigation destination for the given [url].
  NavigationDestination determineDestination({required String url}) {
    return determine(
      url: url,
      urlNavigationList: state.urlNavigationList.value,
    );
  }
}
