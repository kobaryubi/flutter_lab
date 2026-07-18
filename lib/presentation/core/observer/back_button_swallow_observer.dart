import 'package:flutter/widgets.dart';

/// Observer that swallows the Android back event while the error widget is
/// visible, so the back key can neither pop the route behind the error nor
/// exit the app. Returning false hands the event to the router as usual.
class BackButtonSwallowObserver with WidgetsBindingObserver {
  BackButtonSwallowObserver({required this.isErrorVisible});

  /// Reports whether the error widget is currently visible.
  final ValueGetter<bool> isErrorVisible;

  @override
  Future<bool> didPopRoute() => Future.value(isErrorVisible());
}
