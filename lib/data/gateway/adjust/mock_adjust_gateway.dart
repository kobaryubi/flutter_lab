import 'package:flutter_lab/domain/adjust/adjust_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Mock implementation of [AdjustGateway] that returns success
/// for all operations without depending on the Adjust SDK.
class MockAdjustGateway implements AdjustGateway {
  DeferredDeeplinkCallback? _onDeferredDeeplink;

  @override
  AsyncResult<Unit> initialize({
    EventSuccessCallback? onEventSuccess,
    EventFailureCallback? onEventFailure,
    DeferredDeeplinkCallback? onDeferredDeeplink,
    bool isDeferredDeeplinkOpeningEnabled = false,
  }) async {
    _onDeferredDeeplink = onDeferredDeeplink;

    return const Success(unit);
  }

  @override
  AsyncResult<Unit> trackEvent({required String eventToken}) async =>
      const Success(unit);

  @override
  void setPushToken({required String token}) {}

  /// Simulates the SDK delivering a deferred deep link.
  ///
  /// Invokes the callback registered through [initialize], allowing the
  /// deferred deep link flow to be exercised without a real Adjust install
  /// referrer.
  void simulateDeferredDeeplink({required String deeplink}) {
    _onDeferredDeeplink?.call(deeplink);
  }
}
