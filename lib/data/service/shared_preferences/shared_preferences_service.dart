import 'package:shared_preferences/shared_preferences.dart';

/// Service for managing SharedPreferences operations.
class SharedPreferencesService {
  /// Creates a [SharedPreferencesService].
  SharedPreferencesService({
    required SharedPreferencesAsync sharedPreferencesAsync,
  }) : _sharedPreferencesAsync = sharedPreferencesAsync;

  final SharedPreferencesAsync _sharedPreferencesAsync;

  /// Gets a DateTime value for the given key.
  Future<DateTime?> getDateTime({required String key}) async {
    final value = await _sharedPreferencesAsync.getString(key);
    return value == null ? null : DateTime.parse(value);
  }

  /// Sets a DateTime value for the given key.
  Future<void> setDateTime({required String key, required DateTime value}) {
    return _sharedPreferencesAsync.setString(key, value.toIso8601String());
  }
}
