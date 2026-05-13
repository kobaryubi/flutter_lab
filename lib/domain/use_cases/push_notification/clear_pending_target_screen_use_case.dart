import 'package:flutter_lab/application/memory_storage/memory_storage_gateway.dart';
import 'package:flutter_lab/domain/use_cases/push_notification/pending_target_screen_storage_key.dart';

/// Clears any pending target screen held in memory.
///
/// Intended to be called from screens that should suppress pending
/// push-notification navigation when entered (e.g. via `useEffect` on
/// mount). Has no effect if nothing is pending.
class ClearPendingTargetScreenUseCase {
  ClearPendingTargetScreenUseCase({
    required MemoryStorageGateway memoryStorageGateway,
  }) : _memoryStorageGateway = memoryStorageGateway;

  final MemoryStorageGateway _memoryStorageGateway;

  /// Removes the stored target screen. No-op if nothing is pending.
  void call() {
    _memoryStorageGateway.remove(key: pendingTargetScreenStorageKey);
  }
}
