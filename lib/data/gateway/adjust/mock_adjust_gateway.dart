import 'package:flutter_lab/domain/adjust/adjust_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Mock implementation of [AdjustGateway] that returns success
/// for all operations without depending on the Adjust SDK.
class MockAdjustGateway implements AdjustGateway {
  @override
  AsyncResult<Unit> initialize({
    EventSuccessCallback? onEventSuccess,
    EventFailureCallback? onEventFailure,
  }) async => const Success(unit);

  @override
  AsyncResult<Unit> trackEvent({required String eventToken}) async =>
      const Success(unit);

  @override
  AsyncResult<String> processAndResolveDeeplink({required String url}) async =>
      Success(url);

  @override
  void setPushToken({required String token}) {}
}
