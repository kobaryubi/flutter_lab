import 'package:result_dart/result_dart.dart';

/// Gateway for Adjust SDK operations.
///
/// Abstracts the Adjust SDK behind a domain-layer interface.
abstract class AdjustGateway {
  /// Initializes the Adjust SDK with the given [appToken].
  AsyncResult<Unit> initialize({required String appToken});

  /// Sets the push notification token for Adjust.
  ///
  /// Push tokens are used for Audiences, client callbacks,
  /// and uninstall/reinstall measurement.
  Result<Unit> setPushToken({required String token});
}
