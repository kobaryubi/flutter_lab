import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_snackbar_notifier.g.dart';

/// A transient message displayed by the global snackbar overlay.
///
/// `id` monotonically increases with every `show` call so that re-posting
/// the same `text` is still observable as a new event.
typedef SnackbarMessage = ({String text, int id});

/// Notifier that controls the global snackbar overlay.
///
/// Holds the currently visible message; `null` when nothing is shown.
@Riverpod(keepAlive: true)
class GlobalSnackbarNotifier extends _$GlobalSnackbarNotifier {
  int _counter = 0;

  @override
  SnackbarMessage? build() => null;

  /// Posts a message for the overlay to display.
  void show({required String text}) {
    _counter++;
    state = (text: text, id: _counter);
  }

  /// Dismisses the currently shown message.
  void dismiss() {
    state = null;
  }
}
