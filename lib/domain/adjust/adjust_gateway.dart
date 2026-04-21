import 'package:flutter_lab/domain/adjust/event_failure_data.dart';
import 'package:flutter_lab/domain/adjust/event_success_data.dart';
import 'package:result_dart/result_dart.dart';

/// Callback invoked when an Adjust event is recorded successfully.
typedef EventSuccessCallback = void Function(EventSuccessData data);

/// Callback invoked when an Adjust event fails to record.
typedef EventFailureCallback = void Function(EventFailureData data);

/// Callback invoked when Adjust delivers a deferred deep link.
///
/// A deferred deep link is one received before the app instance existed
/// (e.g. attribution-based links delivered on first launch).
typedef DeferredDeeplinkCallback = void Function(String deeplink);

/// Gateway for Adjust SDK operations.
///
/// Abstracts the Adjust SDK behind a domain-layer interface.
abstract class AdjustGateway {
  /// Initializes the Adjust SDK.
  ///
  /// Callbacks must be registered before initialization
  /// as required by the Adjust SDK.
  ///
  /// When [onDeferredDeeplink] is supplied it receives the deferred deep link
  /// captured by the SDK. [isDeferredDeeplinkOpeningEnabled] defaults to
  /// `false` so the SDK does not automatically open the link — the app
  /// decides when (and whether) to handle it.
  AsyncResult<Unit> initialize({
    EventSuccessCallback? onEventSuccess,
    EventFailureCallback? onEventFailure,
    DeferredDeeplinkCallback? onDeferredDeeplink,
    bool isDeferredDeeplinkOpeningEnabled = false,
  });

  /// Tracks an event with the given [eventToken].
  ///
  /// [eventToken] is the token assigned to the event in the Adjust dashboard.
  AsyncResult<Unit> trackEvent({required String eventToken});

  /// Sets the push notification token for Adjust.
  ///
  /// Push tokens are used for Audiences, client callbacks,
  /// and uninstall/reinstall measurement.
  void setPushToken({required String token});
}
