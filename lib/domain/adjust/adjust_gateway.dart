import 'package:flutter_lab/domain/adjust/event_failure_data.dart';
import 'package:flutter_lab/domain/adjust/event_success_data.dart';
import 'package:result_dart/result_dart.dart';

/// Callback invoked when an Adjust event is recorded successfully.
typedef EventSuccessCallback = void Function(EventSuccessData data);

/// Callback invoked when an Adjust event fails to record.
typedef EventFailureCallback = void Function(EventFailureData data);

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
  });

  /// Tracks an event with the given [eventToken].
  ///
  /// [eventToken] is the token assigned to the event in the Adjust dashboard.
  AsyncResult<Unit> trackEvent({required String eventToken});

  /// Forwards [url] to the Adjust SDK and resolves it.
  ///
  /// Returns the resolved deep link, falling back to [url] when the SDK
  /// has nothing additional to resolve.
  AsyncResult<String> processAndResolveDeeplink({required String url});

  /// Sets the push notification token for Adjust.
  ///
  /// Push tokens are used for Audiences, client callbacks,
  /// and uninstall/reinstall measurement.
  void setPushToken({required String token});
}
