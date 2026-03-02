import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'route_aware_demo_view_model.g.dart';

/// ViewModel that holds a list of route-aware event logs.
///
/// Hook callbacks append formatted event strings here,
/// and the UI rebuilds to display them in real-time.
@riverpod
class RouteAwareDemoViewModel extends _$RouteAwareDemoViewModel {
  @override
  List<String> build() => [];

  /// Appends a route-aware event log entry.
  void addEvent({required String event}) {
    state = [...state, event];
  }

  /// Clears all logged events.
  void clearEvents() {
    state = [];
  }
}
