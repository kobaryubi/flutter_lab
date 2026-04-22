import 'dart:io';

import 'package:adjust_sdk/adjust.dart';
import 'package:adjust_sdk/adjust_config.dart'
    hide DeferredDeeplinkCallback, EventFailureCallback, EventSuccessCallback;
import 'package:adjust_sdk/adjust_event.dart';
import 'package:adjust_sdk/adjust_event_failure.dart';
import 'package:adjust_sdk/adjust_event_success.dart';
import 'package:flutter_lab/domain/adjust/adjust_gateway.dart';
import 'package:flutter_lab/domain/adjust/app_token.dart';
import 'package:flutter_lab/domain/adjust/event_failure_data.dart';
import 'package:flutter_lab/domain/adjust/event_success_data.dart';
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
  AsyncResult<Unit> initialize({
    EventSuccessCallback? onEventSuccess,
    EventFailureCallback? onEventFailure,
    DeferredDeeplinkCallback? onDeferredDeeplink,
    bool isDeferredDeeplinkOpeningEnabled = false,
  }) async {
    try {
      final appToken = Platform.isIOS ? AppToken.ios : AppToken.android;
      final config = AdjustConfig(appToken, _environment);

      if (_logLevel != null) {
        config.logLevel = _logLevel;
      }

      if (onEventSuccess != null) {
        config.eventSuccessCallback = (successData) =>
            onEventSuccess(_mapSuccessData(successData));
      }

      if (onEventFailure != null) {
        config.eventFailureCallback = (failureData) =>
            onEventFailure(_mapFailureData(failureData));
      }

      config.isDeferredDeeplinkOpeningEnabled =
          isDeferredDeeplinkOpeningEnabled;

      if (onDeferredDeeplink != null) {
        config.deferredDeeplinkCallback = (deeplink) {
          if (deeplink == null) return;

          onDeferredDeeplink(deeplink);
        };
      }

      Adjust.initSdk(config);

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  /// Maps SDK success data to the domain model.
  EventSuccessData _mapSuccessData(AdjustEventSuccess data) => EventSuccessData(
    eventToken: data.eventToken,
    message: data.message,
    timestamp: data.timestamp,
    adid: data.adid,
    callbackId: data.callbackId,
    jsonResponse: data.jsonResponse,
  );

  /// Maps SDK failure data to the domain model.
  EventFailureData _mapFailureData(AdjustEventFailure data) => EventFailureData(
    eventToken: data.eventToken,
    message: data.message,
    timestamp: data.timestamp,
    adid: data.adid,
    callbackId: data.callbackId,
    willRetry: data.willRetry,
    jsonResponse: data.jsonResponse,
  );

  @override
  AsyncResult<Unit> trackEvent({required String eventToken}) async {
    try {
      final event = AdjustEvent(eventToken);

      Adjust.trackEvent(event);

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<String> getAdid() async {
    try {
      final adid = await Adjust.getAdid();

      if (adid == null) {
        return Failure(
          Exception(
            'ADID is not yet available. '
            'The SDK has not reported its first session.',
          ),
        );
      }

      return Success(adid);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  void setPushToken({required String token}) {
    Adjust.setPushToken(token);
  }
}
