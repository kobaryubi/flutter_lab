import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_status.freezed.dart';

/// Represents the current network connectivity status.
@freezed
abstract class ConnectivityStatus with _$ConnectivityStatus {
  const factory ConnectivityStatus({
    required String connectivityResult,
  }) = _ConnectivityStatus;
}
