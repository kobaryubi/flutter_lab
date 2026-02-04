import 'package:flutter_lab/domain/app_store/app_store_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Resolves the app store URL for the current platform.
class GetAppStoreUrlUseCase {
  GetAppStoreUrlUseCase({
    required AppStoreRepository appStoreRepository,
  }) : _appStoreRepository = appStoreRepository;

  final AppStoreRepository _appStoreRepository;

  /// Returns the store URL for the configured platform.
  Result<Uri> call() {
    return _appStoreRepository.getUrl();
  }
}
