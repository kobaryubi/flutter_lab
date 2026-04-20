import 'package:flutter_lab/domain/adjust/event_failure_data.dart';
import 'package:flutter_lab/domain/adjust/event_success_data.dart';
import 'package:result_dart/result_dart.dart';

/// Callback invoked when an Adjust event is recorded successfully.
typedef EventSuccessCallback = void Function(EventSuccessData data);

/// Callback invoked when an Adjust event fails to record.
typedef EventFailureCallback = void Function(EventFailureData data);

/// Callback invoked when the Adjust SDK delivers a direct deep link.
///
/// [resolvedLink] is the link returned by Adjust after processing and
/// resolving the incoming deep link. It is `null` when resolution fails.
typedef DirectDeeplinkCallback = void Function(String? resolvedLink);

/// Gateway for Adjust SDK operations.
///
/// Abstracts the Adjust SDK behind a domain-layer interface.
abstract class AdjustGateway {
  /// Initializes the Adjust SDK.
  ///
  /// Callbacks must be registered before initialization
  /// as required by the Adjust SDK.
  AsyncResult<Unit> initialize({
    EventSuccessCallback? onEventSuccess,
    EventFailureCallback? onEventFailure,
    DirectDeeplinkCallback? onDirectDeeplink,
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
