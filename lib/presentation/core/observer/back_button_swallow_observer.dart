import 'package:flutter/widgets.dart';

/// Observer that will swallow the Android back event while an error widget
/// is visible.
///
/// For now it always lets the event through; the visibility wiring comes in
/// a later step.
class BackButtonSwallowObserver with WidgetsBindingObserver {
  @override
  Future<bool> didPopRoute() => Future.value(false);
}
