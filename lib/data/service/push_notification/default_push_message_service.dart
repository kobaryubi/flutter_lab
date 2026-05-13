import 'dart:async';

import 'package:flutter_lab/application/memory_storage/memory_storage_gateway.dart';
import 'package:flutter_lab/domain/app_badge/app_badge_gateway.dart';
import 'package:flutter_lab/domain/entity/push_notification/push_message.dart';
import 'package:flutter_lab/domain/push_notification/push_message_service.dart';
import 'package:flutter_lab/domain/use_cases/push_notification/pending_target_screen_storage_key.dart';

/// Default [PushMessageService] implementation.
///
/// Saves the message's target screen into shared in-memory storage so a
/// post-login screen can read it for navigation, and clears the app icon
/// badge as a fire-and-forget side effect. Applied uniformly to every
/// message regardless of entry point (foreground, opened, or initial).
class DefaultPushMessageService implements PushMessageService {
  DefaultPushMessageService({
    required MemoryStorageGateway memoryStorageGateway,
    required AppBadgeGateway appBadgeGateway,
  }) : _memoryStorageGateway = memoryStorageGateway,
       _appBadgeGateway = appBadgeGateway;

  final MemoryStorageGateway _memoryStorageGateway;
  final AppBadgeGateway _appBadgeGateway;

  @override
  PushMessage handle({required PushMessage message}) {
    _memoryStorageGateway.save(
      key: pendingTargetScreenStorageKey,
      value: message.data.targetScreen,
    );
    unawaited(_appBadgeGateway.clearBadge());

    return message;
  }
}
