import 'package:flutter_lab/domain/entity/navigation/navigation_destination.dart';
import 'package:flutter_lab/ui/shared/provider/provider.dart';
import 'package:flutter_lab/ui/url_navigation/ui_state/url_navigation_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'url_navigation_view_model.g.dart';

/// ViewModel that fetches the URL navigation list.
@riverpod
class UrlNavigationViewModel extends _$UrlNavigationViewModel {
  @override
  UrlNavigationUiState build() {
    return const UrlNavigationUiState(urlNavigationList: .loading());
  }

  /// Fetches the navigation list from the use case.
  Future<void> fetch() async {
    final useCase = ref.read(getUrlNavigationListUseCaseProvider);
    state = state.copyWith(
      urlNavigationList: await AsyncValue.guard(() async {
        final result = await useCase.call();
        return result.getOrThrow();
      }),
    );
  }

  /// Determines the navigation destination for the given [url].
  ///
  /// Falls back to [NavigationDestination.externalBrowser] when
  /// the navigation list is not yet loaded.
  NavigationDestination determineDestination({required String url}) {
    return state.urlNavigationList.value?.destinationFor(url: url) ??
        .externalBrowser;
  }
}
