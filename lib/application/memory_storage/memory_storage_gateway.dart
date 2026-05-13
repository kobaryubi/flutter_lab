/// Gateway interface for a process-scoped, in-memory key/value store.
///
/// Holds transient values that need to survive between unrelated callers
/// within a single app run (e.g. a target screen captured from a push
/// notification, read later by a post-login navigator) but do not need
/// to outlive the process.
///
/// Lives in the application layer: no Riverpod, no platform SDKs, no
/// Flutter framework imports. The data layer provides the concrete
/// implementation and the DI layer scopes it so a single instance is
/// shared across the app.
abstract class MemoryStorageGateway {
  /// Stores [value] under [key], replacing any previously stored value.
  void save<T>({required String key, required T value});

  /// Returns the value stored under [key] cast to [T], or `null` if no
  /// value is stored.
  T? read<T>({required String key});

  /// Removes the value stored under [key]. No-op if nothing is stored.
  void remove({required String key});
}
