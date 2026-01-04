import 'package:flutter_lab/data/repositories/agreement/agreement_repository.dart';
import 'package:flutter_lab/data/shared_preferences/shared_preferences_keys.dart';
import 'package:flutter_lab/domain/models/exception/domain_exception.dart';
import 'package:result_dart/result_dart.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Implementation of [AgreementRepository] using SharedPreferences.
class SharedPreferencesAgreementRepository implements AgreementRepository {
  /// Creates a [SharedPreferencesAgreementRepository].
  SharedPreferencesAgreementRepository({
    required SharedPreferencesAsync sharedPreferencesAsync,
  }) : _sharedPreferencesAsync = sharedPreferencesAsync;

  final SharedPreferencesAsync _sharedPreferencesAsync;

  @override
  AsyncResult<DateTime> getLatestAgreedDate() async {
    final value = await _sharedPreferencesAsync.getString(
      SharedPreferencesKeys.latestAgreedDate,
    );
    if (value == null) {
      return const Failure(DomainException.notFound());
    }
    return Success(DateTime.parse(value));
  }

  @override
  AsyncResult<Unit> saveLatestAgreedDate({required DateTime date}) async {
    await _sharedPreferencesAsync.setString(
      SharedPreferencesKeys.latestAgreedDate,
      date.toIso8601String(),
    );
    return const Success(unit);
  }
}
