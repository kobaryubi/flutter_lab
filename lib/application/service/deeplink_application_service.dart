import 'package:flutter_lab/application/memory_storage/memory_storage_gateway.dart';
import 'package:flutter_lab/domain/deeplink/deeplink_service.dart';
import 'package:flutter_lab/domain/use_cases/adjust/pending_deeplink_storage_key.dart';
import 'package:flutter_lab/routing/screen.dart';
import 'package:flutter_lab/routing/uri_location.dart';

/// Application-layer orchestrator for incoming deeplinks.
///
/// Combines the domain-level [DeeplinkService] (URL normalization), the
/// shared [MemoryStorageGateway] (pending-link storage), and the
/// routing-layer [Screen] policy (which screens are reachable from a
/// deeplink) into a single one-shot consume operation.
///
/// Placed in the application layer because it crosses domain ↔ data ↔
/// routing boundaries that no single layer can own on its own.
class DeeplinkApplicationService {
  /// Creates a [DeeplinkApplicationService].
  const DeeplinkApplicationService({
    required DeeplinkService deeplinkService,
    required MemoryStorageGateway memoryStorageGateway,
  }) : _deeplinkService = deeplinkService,
       _memoryStorageGateway = memoryStorageGateway;

  final DeeplinkService _deeplinkService;
  final MemoryStorageGateway _memoryStorageGateway;

  /// Reads the pending deeplink, validates it, and returns the
  /// intra-app location string to navigate to.
  ///
  /// Returns `null` when there is no pending link, when the URL fails
  /// normalization, when the resulting [Uri] does not map to a known
  /// [Screen], or when the matched [Screen] has
  /// [Screen.isAllowedFromDeeplink] set to `false`.
  ///
  /// The pending entry is cleared on every call, regardless of the
  /// outcome — the same link is never retried.
  String? consumePendingDeeplink() {
    final raw = _memoryStorageGateway.read<String>(
      key: pendingDeeplinkStorageKey,
    );
    _memoryStorageGateway.remove(key: pendingDeeplinkStorageKey);

    if (raw == null) return null;

    final uri = _deeplinkService.normalize(url: raw).getOrNull();
    if (uri == null) return null;

    final screen = Screen.fromUri(uri);
    if (screen == null || !screen.isAllowedFromDeeplink) return null;

    return uri.toLocation();
  }
}
