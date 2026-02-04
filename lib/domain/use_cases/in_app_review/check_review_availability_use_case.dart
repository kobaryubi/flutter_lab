import 'package:flutter_lab/domain/in_app_review/in_app_review_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Checks whether the in-app review dialog is available on this device.
class CheckReviewAvailabilityUseCase {
  CheckReviewAvailabilityUseCase({
    required InAppReviewRepository inAppReviewRepository,
  }) : _inAppReviewRepository = inAppReviewRepository;

  final InAppReviewRepository _inAppReviewRepository;

  /// Returns whether the in-app review is available.
  AsyncResult<bool> call() {
    return _inAppReviewRepository.isAvailable();
  }
}
