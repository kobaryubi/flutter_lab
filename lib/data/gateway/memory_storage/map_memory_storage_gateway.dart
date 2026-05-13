import 'package:flutter_lab/application/memory_storage/memory_storage_gateway.dart';

/// [MemoryStorageGateway] backed by a plain `Map` held in memory.
///
/// Process-scoped: stored values are lost when the app terminates. The
/// DI layer is responsible for sharing a single instance so callers
/// observe the same store.
class MapMemoryStorageGateway implements MemoryStorageGateway {
  final Map<String, Object?> _entries = {};

  @override
  void save<T>({required String key, required T value}) {
    _entries[key] = value;
  }

  @override
  T? read<T>({required String key}) {
    final value = _entries[key];

    return value is T ? value : null;
  }

  @override
  void remove({required String key}) {
    _entries.remove(key);
  }
}
