import 'package:flutter_lab/domain/entity/network/connectivity_status.dart';
import 'package:result_dart/result_dart.dart';

/// Repository interface for checking network connectivity.
abstract class NetworkRepository {
  /// Checks the current network connectivity status.
  AsyncResult<ConnectivityStatus> checkConnectivity();

  /// Stream that emits a new status whenever connectivity changes.
  Stream<ConnectivityStatus> get onConnectivityChanged;
}
