import 'package:flutter_lab/domain/entity/network/connectivity_status.dart';
import 'package:flutter_lab/domain/network/network_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Gets the current network connectivity status.
class GetConnectivityUseCase {
  GetConnectivityUseCase({
    required NetworkGateway networkGateway,
  }) : _networkGateway = networkGateway;

  final NetworkGateway _networkGateway;

  /// Returns the current connectivity status.
  AsyncResult<ConnectivityStatus> call() => _networkGateway.getConnectivity();
}
