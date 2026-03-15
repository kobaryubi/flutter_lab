import 'package:flutter/widgets.dart';
import 'package:flutter_lab/domain/use_cases/analytics/log_view_event_use_case.dart';

/// A [NavigatorObserver] that logs screen view analytics
/// events on navigation.
class AnalyticsNavigationObserver extends NavigatorObserver {
  AnalyticsNavigationObserver({
    required LogViewEventUseCase logViewEventUseCase,
  }) : _logViewEventUseCase = logViewEventUseCase;

  final LogViewEventUseCase _logViewEventUseCase;

  @override
  void didPush(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) {
    _logScreenView(route: route);
  }

  @override
  void didReplace({
    Route<dynamic>? newRoute,
    Route<dynamic>? oldRoute,
  }) {
    if (newRoute != null) {
      _logScreenView(route: newRoute);
    }
  }

  /// Logs a screen view event using the route name.
  void _logScreenView({required Route<dynamic> route}) {
    final screenName = route.settings.name;

    if (screenName == null) {
      return;
    }

    _logViewEventUseCase.call(screenName: screenName);
  }
}
