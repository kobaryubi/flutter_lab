import 'package:flutter_lab/domain/max/max_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that checks whether a rewarded ad is ready to be shown.
class IsRewardedAdReadyUseCase {
  IsRewardedAdReadyUseCase({required MaxGateway maxGateway})
    : _maxGateway = maxGateway;

  final MaxGateway _maxGateway;

  /// Returns whether a rewarded ad is ready.
  AsyncResult<bool> call() => _maxGateway.isRewardedAdReady();
}
