import 'package:flutter_lab/domain/in_app_review/in_app_review_repository.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:result_dart/result_dart.dart';

/// [InAppReviewRepository] implementation using `in_app_review` plugin.
class PluginInAppReviewRepository implements InAppReviewRepository {
  /// Creates a [PluginInAppReviewRepository].
  PluginInAppReviewRepository({
    required InAppReview inAppReview,
  }) : _inAppReview = inAppReview;

  final InAppReview _inAppReview;

  @override
  AsyncResult<bool> isAvailable() async {
    try {
      final available = await _inAppReview.isAvailable();
      return available.toSuccess();
    } on Exception catch (exception) {
      return exception.toFailure();
    }
  }

  @override
  AsyncResult<Unit> requestReview() async {
    try {
      await _inAppReview.requestReview();
      return const Success(unit);
    } on Exception catch (exception) {
      return exception.toFailure();
    }
  }
}
