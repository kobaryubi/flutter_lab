import 'package:flutter_lab/domain/max/max_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Mock implementation of [MaxGateway] that returns success
/// for all operations without depending on the AppLovin MAX SDK.
class MockMaxGateway implements MaxGateway {
  @override
  AsyncResult<Unit> initialize() async => const Success(unit);

  @override
  AsyncResult<Unit> loadRewardedAd() async => const Success(unit);

  @override
  AsyncResult<Unit> showRewardedAd() async => const Success(unit);

  @override
  bool get isRewarded => false;

  @override
  Result<Unit> showMediationDebugger() => const Success(unit);
}
