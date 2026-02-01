import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/models/navigation/url_navigation_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'url_navigation_view_model.g.dart';

/// ViewModel that fetches the URL navigation list.
@riverpod
class UrlNavigationViewModel extends _$UrlNavigationViewModel {
  @override
  AsyncValue<UrlNavigationList> build() {
    return const .loading();
  }

  /// Fetches the navigation list from the use case.
  Future<void> fetch() async {
    state = await AsyncValue.guard(() async {
      final useCase = ref.read(getUrlNavigationListUseCaseProvider);
      final result = await useCase.call();
      return result.getOrThrow();
    });
  }
}
