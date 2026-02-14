import 'package:flutter_lab/domain/agreement/agreement_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that initializes the latest agreed date with the current
/// date when no value has been stored yet.
class InitializeLatestAgreedDateUseCase {
  InitializeLatestAgreedDateUseCase({
    required AgreementRepository agreementRepository,
  }) : _agreementRepository = agreementRepository;

  final AgreementRepository _agreementRepository;

  /// Returns the stored date if it exists, otherwise saves and
  /// returns the current date as the default.
  AsyncResult<DateTime> call() async {
    final result = await _agreementRepository.getLatestAgreedDate();
    return result.fold(
      (date) => date.toSuccess(),
      (_) async {
        final now = DateTime.now();
        await _agreementRepository.saveLatestAgreedDate(date: now);
        return now.toSuccess();
      },
    );
  }
}
