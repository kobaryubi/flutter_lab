import 'package:flutter_lab/domain/adjust/adjust_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Mock implementation of [AdjustGateway] that returns success
/// for all operations without depending on the Adjust SDK.
class MockAdjustGateway implements AdjustGateway {
  DeferredDeeplinkCallback? _onDeferredDeeplink;
  DirectDeeplinkCallback? _onDirectDeeplink;

  @override
  AsyncResult<Unit> initialize({
    EventSuccessCallback? onEventSuccess,
    EventFailureCallback? onEventFailure,
    DeferredDeeplinkCallback? onDeferredDeeplink,
    DirectDeeplinkCallback? onDirectDeeplink,
    bool isDeferredDeeplinkOpeningEnabled = false,
  }) async {
    _onDeferredDeeplink = onDeferredDeeplink;
    _onDirectDeeplink = onDirectDeeplink;

    return const Success(unit);
  }

  @override
  AsyncResult<Unit> trackEvent({required String eventToken}) async =>
      const Success(unit);

  @override
  AsyncResult<String> getAdid() async =>
      const Success('mock-adid-00000000000000000000000000000000');

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

  /// Simulates the SDK delivering a direct deep link.
  ///
  /// Invokes the callback registered through [initialize], allowing the
  /// direct deep link flow to be exercised without a real universal
  /// link / app link.
  void simulateDirectDeeplink({required String deeplink}) {
    _onDirectDeeplink?.call(deeplink);
  }
}
