import 'package:result_dart/result_dart.dart';

/// Repository for managing agreement dates.
abstract class AgreementRepository {
  /// Gets the latest agreed date. Returns Failure if not found.
  AsyncResult<DateTime> getLatestAgreedDate();

  /// Saves the latest agreed date.
  AsyncResult<Unit> saveLatestAgreedDate({required DateTime date});
}
