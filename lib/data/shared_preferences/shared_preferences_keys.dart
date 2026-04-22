/// Keys for SharedPreferences storage.
abstract final class SharedPreferencesKeys {
  /// Key for storing the latest agreed date.
  static const latestAgreedDate = 'latest_agreed_date';

  /// All keys declared in this class. Used by debug tooling to enumerate
  /// only the keys the app knows about, rather than every stored key.
  static const all = <String>{latestAgreedDate};
}
