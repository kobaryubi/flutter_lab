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
  Future<void> setDateTime({required String key, required DateTime value}) =>
      _sharedPreferencesAsync.setString(key, value.toIso8601String());

  /// Returns the entries stored for the given [keys].
  ///
  /// Pass `SharedPreferencesKeys.all` to inspect every key the app declares.
  Future<Map<String, Object?>> getAll({required Set<String> keys}) =>
      _sharedPreferencesAsync.getAll(allowList: keys);

  /// Writes [value] to [key], dispatching on the runtime type.
  ///
  /// Supports the five SharedPreferences types: `String`, `int`, `bool`,
  /// `double`, and `List<String>`. Throws [ArgumentError] for others.
  Future<void> writeValue({
    required String key,
    required Object value,
  }) async {
    switch (value) {
      case final String stringValue:
        await _sharedPreferencesAsync.setString(key, stringValue);
      case final int intValue:
        await _sharedPreferencesAsync.setInt(key, intValue);
      case final bool boolValue:
        await _sharedPreferencesAsync.setBool(key, boolValue);
      case final double doubleValue:
        await _sharedPreferencesAsync.setDouble(key, doubleValue);
      case final List<String> listValue:
        await _sharedPreferencesAsync.setStringList(key, listValue);
      default:
        throw ArgumentError.value(value, 'value', 'Unsupported type');
    }
  }
}
