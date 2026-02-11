import 'package:flutter_lab/domain/entity/network/connectivity_status.dart';

/// Gateway interface for checking network connectivity.
abstract class NetworkGateway {
  /// Stream that emits a new status whenever connectivity changes.
  Stream<ConnectivityStatus> get onConnectivityChanged;
}
