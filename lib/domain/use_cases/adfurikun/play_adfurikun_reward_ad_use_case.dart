import 'package:flutter_lab/domain/adfurikun/adfurikun_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that plays an Adfurikun reward ad.
class PlayAdfurikunRewardAdUseCase {
  PlayAdfurikunRewardAdUseCase({
    required AdfurikunGateway adfurikunGateway,
  }) : _adfurikunGateway = adfurikunGateway;

  final AdfurikunGateway _adfurikunGateway;

  /// Plays a reward ad for the given [appId].
  ///
  /// Completes with [Unit] when the ad is closed.
  AsyncResult<Unit> call({required String appId}) =>
      _adfurikunGateway.playRewardAd(appId: appId);
}
