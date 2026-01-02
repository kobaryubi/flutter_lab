import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_error_widget_notifier.g.dart';

@riverpod
class GlobalErrorWidgetNotifier extends _$GlobalErrorWidgetNotifier {
  @override
  Widget? build() => null;

  /// The widget displayed in global overlay.
  Widget? get widget => state;

  /// Sets the widget to display in global overlay.
  set widget(Widget? value) {
    state = value;
  }
}
