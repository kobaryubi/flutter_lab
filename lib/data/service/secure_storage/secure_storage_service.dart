import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Service for managing FlutterSecureStorage operations.
class SecureStorageService {
  /// Creates a [SecureStorageService].
  SecureStorageService({required FlutterSecureStorage secureStorage})
    : _secureStorage = secureStorage;

  final FlutterSecureStorage _secureStorage;

  /// Returns the entries stored for the given [keys].
  ///
  /// Pass `SecureStorageKeys.all` to inspect every key the app declares.
  /// Values that are not present in storage are omitted from the result.
  Future<Map<String, String>> getAll({required Set<String> keys}) async {
    final entries = <String, String>{};

    for (final key in keys) {
      final value = await _secureStorage.read(key: key);

      if (value == null) continue;

      entries[key] = value;
    }

    return entries;
  }

  /// Writes [value] to [key].
  Future<void> writeValue({
    required String key,
    required String value,
  }) => _secureStorage.write(key: key, value: value);
}
