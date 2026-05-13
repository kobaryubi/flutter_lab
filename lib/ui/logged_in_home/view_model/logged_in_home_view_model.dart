import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/logged_in_home/ui_state/logged_in_home_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logged_in_home_view_model.g.dart';

/// ViewModel for the logged-in home screen.
///
/// Holds the pending target screen captured from a push-notification tap
/// so the view layer can react to it (typically by navigating).
@riverpod
class LoggedInHomeViewModel extends _$LoggedInHomeViewModel {
  @override
  LoggedInHomeUiState build() => const LoggedInHomeUiState();

  /// Reads and clears the pending target screen from in-memory storage,
  /// then exposes it on the UI state.
  void consumePendingTargetScreen() {
    final targetScreen = ref
        .read(consumePendingTargetScreenUseCaseProvider)
        .call();

    state = state.copyWith(targetScreen: targetScreen);
  }
}
