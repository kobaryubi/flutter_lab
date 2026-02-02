import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/use_cases/navigation/determine_navigation_destination_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

/// Provides [DetermineNavigationDestinationUseCase] with its dependencies.
@riverpod
DetermineNavigationDestinationUseCase determineNavigationDestinationUseCase(
  Ref ref,
) {
  return DetermineNavigationDestinationUseCase(
    urlNavigationListRepository: ref.read(
      urlNavigationListRepositoryProvider,
    ),
  );
}
