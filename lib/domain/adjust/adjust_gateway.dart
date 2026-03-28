import 'package:result_dart/result_dart.dart';

/// Gateway for Adjust SDK operations.
///
/// Abstracts the Adjust SDK behind a domain-layer interface.
abstract class AdjustGateway {
  /// Initializes the Adjust SDK.
  AsyncResult<Unit> initialize();

  /// Sets the push notification token for Adjust.
  ///
  /// Push tokens are used for Audiences, client callbacks,
  /// and uninstall/reinstall measurement.
  void setPushToken({required String token});
}
