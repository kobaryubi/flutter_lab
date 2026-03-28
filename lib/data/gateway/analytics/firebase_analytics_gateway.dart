import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_lab/domain/analytics/analytics_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Firebase Analytics implementation of [AnalyticsGateway].
class FirebaseAnalyticsGateway implements AnalyticsGateway {
  final FirebaseAnalytics _firebaseAnalytics = FirebaseAnalytics.instance;

  @override
  AsyncResult<Unit> setDefaultEventParameters({
    required Map<String, Object?> parameters,
  }) async {
    try {
      await _firebaseAnalytics.setDefaultEventParameters(
        parameters,
      );

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<Unit> logEvent({
    required String name,
    Map<String, Object>? parameters,
  }) async {
    try {
      await _firebaseAnalytics.logEvent(
        name: name,
        parameters: parameters,
      );

      return const Success(unit);
    } on Exception catch (exception) {
      debugPrint('FirebaseAnalyticsGateway logEvent error: $exception');
      return Failure(exception);
    }
  }

  @override
  AsyncResult<Unit> logScreenView({
    required String screenName,
  }) async {
    try {
      await _firebaseAnalytics.logScreenView(
        screenName: screenName,
      );

      return const Success(unit);
    } on Exception catch (exception) {
      debugPrint('FirebaseAnalyticsGateway logScreenView error: $exception');
      return Failure(exception);
    }
  }

  @override
  AsyncResult<Unit> setUserProperty({
    required String name,
    required String? value,
  }) async {
    try {
      await _firebaseAnalytics.setUserProperty(
        name: name,
        value: value,
      );

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }
}
