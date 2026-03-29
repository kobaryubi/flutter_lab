import 'package:flutter_lab/domain/max/max_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that shows a rewarded ad via the MAX SDK.
class ShowRewardedAdUseCase {
  ShowRewardedAdUseCase({required MaxGateway maxGateway})
    : _maxGateway = maxGateway;

  final MaxGateway _maxGateway;

  /// Shows a rewarded ad for the given [adUnitId].
  ///
  /// After completion, check [MaxGateway.isRewarded] for the result.
  AsyncResult<Unit> call({required String adUnitId}) =>
      _maxGateway.showRewardedAd(adUnitId: adUnitId);
}
