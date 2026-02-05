import 'package:result_dart/result_dart.dart';

/// Repository interface for in-app review operations.
abstract class InAppReviewRepository {
  /// Checks whether the in-app review dialog is available on this device.
  AsyncResult<bool> isAvailable();

  /// Requests the native in-app review dialog.
  AsyncResult<Unit> requestReview();
}
