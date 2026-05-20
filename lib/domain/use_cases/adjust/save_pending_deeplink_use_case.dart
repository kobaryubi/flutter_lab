import 'package:flutter_lab/application/memory_storage/memory_storage_gateway.dart';
import 'package:flutter_lab/domain/use_cases/adjust/pending_deeplink_storage_key.dart';

/// Stores a deep link delivered by the Adjust SDK so the app can act on
/// it later.
///
/// Used by the Adjust deferred and direct deep link callbacks. The value
/// replaces any previously stored deep link — the consumer reads it once
/// via `ConsumePendingDeeplinkUseCase` and the slot is cleared.
class SavePendingDeeplinkUseCase {
  SavePendingDeeplinkUseCase({
    required MemoryStorageGateway memoryStorageGateway,
  }) : _memoryStorageGateway = memoryStorageGateway;

  final MemoryStorageGateway _memoryStorageGateway;

  /// Stores [deeplink] under the shared pending-deep-link key.
  void call({required String deeplink}) {
    _memoryStorageGateway.save(
      key: pendingDeeplinkStorageKey,
      value: deeplink,
    );
  }
}
