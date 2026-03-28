import 'package:adjust_sdk/adjust.dart';
import 'package:adjust_sdk/adjust_config.dart';
import 'package:flutter_lab/domain/adjust/adjust_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Adjust SDK implementation of [AdjustGateway].
class SdkAdjustGateway implements AdjustGateway {
  /// Creates a [SdkAdjustGateway].
  ///
  /// [environment] is the Adjust environment (sandbox or production).
  /// [logLevel] controls the verbosity of SDK logging.
  SdkAdjustGateway({
    required AdjustEnvironment environment,
    AdjustLogLevel? logLevel,
  }) : _environment = environment,
       _logLevel = logLevel;

  final AdjustEnvironment _environment;
  final AdjustLogLevel? _logLevel;

  @override
  AsyncResult<Unit> initialize({required String appToken}) async {
    try {
      final config = AdjustConfig(appToken, _environment);

      if (_logLevel != null) {
        config.logLevel = _logLevel;
      }

      Adjust.initSdk(config);

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  Result<Unit> setPushToken({required String token}) {
    Adjust.setPushToken(token);

    return const Success(unit);
  }
}
