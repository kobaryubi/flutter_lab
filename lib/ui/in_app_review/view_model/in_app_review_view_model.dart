import 'package:flutter_lab/application/di/provider.dart';
import 'package:result_dart/result_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart' hide AsyncResult;

part 'in_app_review_view_model.g.dart';

/// ViewModel that manages in-app review operations.
@riverpod
class InAppReviewViewModel extends _$InAppReviewViewModel {
  @override
  void build() {}

  /// Checks whether the in-app review dialog is available.
  AsyncResult<bool> checkAvailability() {
    return ref.read(checkReviewAvailabilityUseCaseProvider).call();
  }

  /// Requests the native in-app review dialog.
  AsyncResult<Unit> requestReview() {
    return ref.read(requestReviewUseCaseProvider).call();
  }
}
