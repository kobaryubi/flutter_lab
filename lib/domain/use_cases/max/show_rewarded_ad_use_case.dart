import 'package:flutter_lab/domain/max/max_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that shows a rewarded ad via the MAX SDK.
class ShowRewardedAdUseCase {
  ShowRewardedAdUseCase({required MaxGateway maxGateway})
    : _maxGateway = maxGateway;

  final MaxGateway _maxGateway;

  /// Shows a rewarded ad and returns whether the user earned a reward.
  AsyncResult<bool> call() => _maxGateway.showRewardedAd();
}
