import 'package:flutter_lab/domain/in_app_review/in_app_review_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Requests the native in-app review dialog.
class RequestReviewUseCase {
  RequestReviewUseCase({
    required InAppReviewRepository inAppReviewRepository,
  }) : _inAppReviewRepository = inAppReviewRepository;

  final InAppReviewRepository _inAppReviewRepository;

  /// Triggers the in-app review flow.
  AsyncResult<Unit> call() => _inAppReviewRepository.requestReview();
}
