import 'package:flutter_lab/data/service/shared_preferences/shared_preferences_service.dart';
import 'package:flutter_lab/data/shared_preferences/shared_preferences_keys.dart';
import 'package:flutter_lab/domain/agreement/agreement_repository.dart';
import 'package:flutter_lab/domain/models/exception/domain_exception.dart';
import 'package:result_dart/result_dart.dart';

/// Implementation of [AgreementRepository] using SharedPreferences.
class SharedPreferencesAgreementRepository implements AgreementRepository {
  /// Creates a [SharedPreferencesAgreementRepository].
  SharedPreferencesAgreementRepository({
    required SharedPreferencesService sharedPreferencesService,
  }) : _sharedPreferencesService = sharedPreferencesService;

  final SharedPreferencesService _sharedPreferencesService;

  @override
  AsyncResult<DateTime> getLatestAgreedDate() async {
    final value = await _sharedPreferencesService.getDateTime(
      key: SharedPreferencesKeys.latestAgreedDate,
    );
    return value == null
        ? const Failure(DomainException.notFound())
        : Success(value);
  }

  @override
  AsyncResult<Unit> saveLatestAgreedDate({required DateTime date}) async {
    await _sharedPreferencesService.setDateTime(
      key: SharedPreferencesKeys.latestAgreedDate,
      value: date,
    );
    return const Success(unit);
  }
}
