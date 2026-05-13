import 'package:flutter_lab/application/memory_storage/memory_storage_gateway.dart';
import 'package:flutter_lab/domain/use_cases/push_notification/pending_target_screen_storage_key.dart';

/// Saves a target screen captured from a push-notification tap into
/// in-memory storage so that a later consumer (e.g. a post-login
/// navigator) can read it and navigate.
class SavePendingTargetScreenUseCase {
  SavePendingTargetScreenUseCase({
    required MemoryStorageGateway memoryStorageGateway,
  }) : _memoryStorageGateway = memoryStorageGateway;

  final MemoryStorageGateway _memoryStorageGateway;

  /// Stores [targetScreen] under the pending-target-screen key,
  /// replacing any previously stored value.
  void call({required String targetScreen}) {
    _memoryStorageGateway.save(
      key: pendingTargetScreenStorageKey,
      value: targetScreen,
    );
  }
}
