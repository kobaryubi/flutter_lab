import 'package:flutter_lab/domain/analytics/analytics_gateway.dart';
import 'package:flutter_lab/domain/analytics/event_name.dart';
import 'package:flutter_lab/domain/analytics/user_property_name.dart';
import 'package:result_dart/result_dart.dart';

/// No-op [AnalyticsGateway] for E2E tests, replacing the Firebase-backed
/// implementation so the app can run without `Firebase.initializeApp()`.
class FakeAnalyticsGateway implements AnalyticsGateway {
  @override
  AsyncResult<Unit> setDefaultEventParameters({
    required Map<String, Object?> parameters,
  }) async => const Success(unit);

  @override
  AsyncResult<Unit> logEvent({
    required EventName name,
    Map<String, Object>? parameters,
  }) async => const Success(unit);

  @override
  AsyncResult<Unit> logScreenView({
    required String screenName,
  }) async => const Success(unit);

  @override
  AsyncResult<Unit> setUserProperty({
    required UserPropertyName name,
    required String? value,
  }) async => const Success(unit);
}
