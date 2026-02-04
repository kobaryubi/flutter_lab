import 'package:flutter_lab/domain/entity/network/connectivity_status.dart';
import 'package:flutter_lab/domain/network/network_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Checks the current network connectivity status.
class CheckConnectivityUseCase {
  CheckConnectivityUseCase({
    required NetworkRepository networkRepository,
  }) : _networkRepository = networkRepository;

  final NetworkRepository _networkRepository;

  /// Returns the current connectivity status.
  AsyncResult<ConnectivityStatus> call() {
    return _networkRepository.checkConnectivity();
  }
}
