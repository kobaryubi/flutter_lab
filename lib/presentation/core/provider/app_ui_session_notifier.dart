import 'package:flutter_lab/presentation/core/provider/app_ui_session.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_ui_session_notifier.g.dart';

/// Manages the UI session state that persists while the app is running.
///
/// Use this to track screen views and other transient UI state
/// that should reset when the user logs out.
@Riverpod(keepAlive: true)
class AppUiSessionNotifier extends _$AppUiSessionNotifier {
  @override
  AppUiSession build() => const AppUiSession();

  /// Returns whether the screen has been viewed in this session.
  bool hasViewed({required String screenName}) =>
      state.viewedScreens.contains(screenName);

  /// Marks the screen as viewed in this session.
  void markAsViewed({required String screenName}) {
    state = state.copyWith(
      viewedScreens: {...state.viewedScreens, screenName},
    );
  }

  /// Resets the session state.
  ///
  /// Call this when the user logs out.
  void reset() {
    state = const AppUiSession();
  }
}
