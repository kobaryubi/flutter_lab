import 'package:flutter_lab/domain/adjust/adjust_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that initializes the Adjust SDK.
class InitializeAdjustUseCase {
  InitializeAdjustUseCase({required AdjustGateway adjustGateway})
    : _adjustGateway = adjustGateway;

  final AdjustGateway _adjustGateway;

  /// Initializes the Adjust SDK.
  ///
  /// [onDeferredDeeplink] is invoked when Adjust delivers a deferred deep
  /// link. [onDirectDeeplink] is invoked with the resolved long-form URL
  /// when Adjust delivers a direct deep link.
  /// [isDeferredDeeplinkOpeningEnabled] defaults to `false` so the
  /// app — not the SDK — decides when to handle the link.
  AsyncResult<Unit> call({
    DeferredDeeplinkCallback? onDeferredDeeplink,
    DirectDeeplinkCallback? onDirectDeeplink,
    bool isDeferredDeeplinkOpeningEnabled = false,
  }) => _adjustGateway.initialize(
    onDeferredDeeplink: onDeferredDeeplink,
    onDirectDeeplink: onDirectDeeplink,
    isDeferredDeeplinkOpeningEnabled: isDeferredDeeplinkOpeningEnabled,
  );
}
