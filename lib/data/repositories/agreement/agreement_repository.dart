/// Repository for managing agreement dates.
abstract class AgreementRepository {
  /// Gets the latest agreed date.
  Future<DateTime?> getLatestAgreedDate();

  /// Saves the latest agreed date.
  Future<void> saveLatestAgreedDate({required DateTime date});
}
