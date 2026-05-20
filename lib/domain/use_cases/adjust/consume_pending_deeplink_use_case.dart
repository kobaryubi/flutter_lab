import 'package:flutter_lab/application/memory_storage/memory_storage_gateway.dart';
import 'package:flutter_lab/domain/use_cases/adjust/pending_deeplink_storage_key.dart';

/// Reads and clears the pending Adjust deep link in a single operation.
///
/// Intended for post-login navigation: the caller invokes [call], and
/// if the result is non-null navigates to the returned deep link. The
/// stored value is cleared regardless so the same link is never consumed
/// twice.
class ConsumePendingDeeplinkUseCase {
  ConsumePendingDeeplinkUseCase({
    required MemoryStorageGateway memoryStorageGateway,
  }) : _memoryStorageGateway = memoryStorageGateway;

  final MemoryStorageGateway _memoryStorageGateway;

  /// Returns the stored deep link and clears it from storage.
  /// Resolves to `null` if no deep link is pending.
  String? call() {
    final deeplink = _memoryStorageGateway.read<String>(
      key: pendingDeeplinkStorageKey,
    );
    _memoryStorageGateway.remove(key: pendingDeeplinkStorageKey);

    return deeplink;
  }
}
