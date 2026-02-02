import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/use_cases/shared/determine_navigation_destination_use_case.dart';
import 'package:flutter_lab/domain/use_cases/shared/get_url_navigation_list_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

/// Provides [DetermineNavigationDestinationUseCase].
@riverpod
DetermineNavigationDestinationUseCase determineNavigationDestinationUseCase(
  Ref ref,
) {
  return DetermineNavigationDestinationUseCase();
}

/// Provides [GetUrlNavigationListUseCase] with its dependencies.
@riverpod
GetUrlNavigationListUseCase getUrlNavigationListUseCase(Ref ref) {
  return GetUrlNavigationListUseCase(
    urlNavigationListRepository: ref.read(
      urlNavigationListRepositoryProvider,
    ),
  );
}
