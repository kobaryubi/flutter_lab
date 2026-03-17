import 'package:flutter_lab/domain/adfurikun/adfurikun_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that shows an Adfurikun reward ad.
class ShowAdfurikunRewardAdUseCase {
  ShowAdfurikunRewardAdUseCase({
    required AdfurikunGateway adfurikunGateway,
  }) : _adfurikunGateway = adfurikunGateway;

  final AdfurikunGateway _adfurikunGateway;

  /// Shows a reward ad for the given [appId].
  ///
  /// Completes with [Unit] when the ad is closed.
  AsyncResult<Unit> call({required String appId}) =>
      _adfurikunGateway.showRewardAd(appId: appId);
}
