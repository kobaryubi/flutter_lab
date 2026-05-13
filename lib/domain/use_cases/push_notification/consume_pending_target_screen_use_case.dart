import 'package:flutter_lab/application/memory_storage/memory_storage_gateway.dart';
import 'package:flutter_lab/domain/use_cases/push_notification/pending_target_screen_storage_key.dart';

/// Reads and clears the pending target screen in a single operation.
///
/// Intended for post-login navigation: the caller invokes [call], and
/// if the result is non-null navigates to the returned screen. The
/// stored value is cleared regardless so the same target is never
/// consumed twice.
class ConsumePendingTargetScreenUseCase {
  ConsumePendingTargetScreenUseCase({
    required MemoryStorageGateway memoryStorageGateway,
  }) : _memoryStorageGateway = memoryStorageGateway;

  final MemoryStorageGateway _memoryStorageGateway;

  /// Returns the stored target screen and clears it from storage.
  /// Resolves to `null` if no target screen is pending.
  String? call() {
    final targetScreen = _memoryStorageGateway.read<String>(
      key: pendingTargetScreenStorageKey,
    );
    _memoryStorageGateway.remove(key: pendingTargetScreenStorageKey);

    return targetScreen;
  }
}
