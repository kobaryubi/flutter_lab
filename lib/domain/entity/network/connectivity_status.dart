import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_status.freezed.dart';

/// Represents the current network connectivity status.
@freezed
abstract class ConnectivityStatus with _$ConnectivityStatus {
  const factory ConnectivityStatus({
    @Default([]) List<String> connectivities,
  }) = _ConnectivityStatus;
  const ConnectivityStatus._();

  static const _connectedStatuses = {
    'wifi',
    'mobile',
    'ethernet',
    'bluetooth',
    'vpn',
  };

  /// Whether the device is connected to a network.
  bool get isConnected => connectivities.any(_connectedStatuses.contains);
}
