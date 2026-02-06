import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_loading_notifier.g.dart';

/// Notifier that controls the visibility of the global loading overlay.
@riverpod
class GlobalLoadingNotifier extends _$GlobalLoadingNotifier {
  @override
  bool build() => false;

  /// Shows the global loading overlay.
  void show() {
    state = true;
  }

  /// Hides the global loading overlay.
  void hide() {
    state = false;
  }
}
