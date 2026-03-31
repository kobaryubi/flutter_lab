import 'package:flutter_lab/domain/adjust/adjust_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that initializes the Adjust SDK.
class InitializeAdjustUseCase {
  InitializeAdjustUseCase({required AdjustGateway adjustGateway})
    : _adjustGateway = adjustGateway;

  final AdjustGateway _adjustGateway;

  /// Initializes the Adjust SDK.
  AsyncResult<Unit> call() => _adjustGateway.initialize();
}
