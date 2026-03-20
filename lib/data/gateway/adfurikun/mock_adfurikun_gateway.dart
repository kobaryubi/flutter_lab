import 'package:flutter_lab/domain/adfurikun/adfurikun_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Mock implementation of [AdfurikunGateway] that returns success
/// for all operations without depending on the Adfurikun SDK.
class MockAdfurikunGateway implements AdfurikunGateway {
  @override
  AsyncResult<Unit> initializeInterstitialAd({
    required String appId,
  }) async => const Success(unit);

  @override
  AsyncResult<Unit> loadInterstitialAd({required String appId}) async =>
      const Success(unit);

  @override
  AsyncResult<Unit> playInterstitialAd({required String appId}) async =>
      const Success(unit);

  @override
  AsyncResult<Unit> initializeRewardAd({required String appId}) async =>
      const Success(unit);

  @override
  AsyncResult<Unit> loadRewardAd({required String appId}) async =>
      const Success(unit);

  @override
  AsyncResult<Unit> playRewardAd({required String appId}) async =>
      const Success(unit);

  @override
  bool isRewarded({required String appId}) => false;

  @override
  void dispose() {}
}
