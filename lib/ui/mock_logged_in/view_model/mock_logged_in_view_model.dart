import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/mock_logged_in/ui_state/mock_logged_in_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mock_logged_in_view_model.g.dart';

/// ViewModel for the mock logged-in screen.
///
/// Consumes any pending target screen on initialization and exposes it
/// via the UI state so the view layer can decide whether to navigate.
@riverpod
class MockLoggedInViewModel extends _$MockLoggedInViewModel {
  @override
  MockLoggedInUiState build() {
    final targetScreen = ref
        .read(consumePendingTargetScreenUseCaseProvider)
        .call();

    return MockLoggedInUiState(targetScreen: targetScreen);
  }
}
