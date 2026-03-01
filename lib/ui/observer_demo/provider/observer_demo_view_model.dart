import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'observer_demo_view_model.g.dart';

/// ViewModel that holds a list of observer event logs.
///
/// Observer callbacks append formatted event strings here,
/// and the UI rebuilds to display them in real-time.
@riverpod
class ObserverDemoViewModel extends _$ObserverDemoViewModel {
  @override
  List<String> build() => [];

  /// Appends an observer event log entry.
  void addEvent({required String event}) {
    state = [...state, event];
  }

  /// Clears all logged events.
  void clearEvents() {
    state = [];
  }
}
