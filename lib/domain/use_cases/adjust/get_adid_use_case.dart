import 'package:flutter_lab/domain/adjust/adjust_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that retrieves the Adjust Device Identifier (ADID).
class GetAdidUseCase {
  GetAdidUseCase({
    required AdjustGateway adjustGateway,
  }) : _adjustGateway = adjustGateway;

  final AdjustGateway _adjustGateway;

  /// Returns the ADID assigned to this install.
  AsyncResult<String> call() => _adjustGateway.getAdid();
}
