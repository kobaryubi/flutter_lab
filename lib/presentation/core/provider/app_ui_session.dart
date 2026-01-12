import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_ui_session.freezed.dart';

/// Represents the UI session state that persists while the app is running.
@freezed
abstract class AppUiSession with _$AppUiSession {
  const factory AppUiSession({
    /// Set of screen names that have been viewed in this session.
    @Default({}) Set<String> viewedScreens,
  }) = _AppUiSession;
}
