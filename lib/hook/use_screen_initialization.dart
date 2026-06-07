import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Runs [onInitialize] every time the screen becomes the one the user is
/// currently looking at:
///
/// - **First appearance** — the screen is mounted while visible.
/// - **Return** — the screen goes from hidden back to visible (e.g. a route
///   pushed on top of it is popped, or its tab is re-selected).
/// - **Foreground resume** — the app returns from a real background
///   (`paused`/`hidden` → `resumed`) while the screen is visible.
///
/// [isVisible] tells the hook whether this screen is the foreground screen
/// right now. Supply it from a route-based source (see the
/// `useRouteScreenInitialization` / `useShellScreenInitialization` wrappers).
void useScreenInitialization({
  required bool isVisible,
  required VoidCallback onInitialize,
}) {
  // First appearance + return: fire whenever [isVisible] flips to true.
  // useEffect only re-runs when its dependency changes, so a stable `true`
  // (a plain rebuild) does not re-fire, and a `true → false` transition is a
  // no-op.
  useEffect(
    () {
      if (!isVisible) {
        return null;
      }

      Future.microtask(onInitialize);

      return null;
    },
    [isVisible],
  );

  // Foreground resume: only after a *real* background. Gating on
  // paused/hidden ignores cold-start resumes and inactive-only transitions
  // (control center, app switcher peek, permission dialogs), which would
  // otherwise double-fire against the first appearance above.
  final wasBackgrounded = useRef(false);

  useOnAppLifecycleStateChange((previous, current) {
    if (current == .paused || current == .hidden) {
      wasBackgrounded.value = true;

      return;
    }

    if (current == .resumed && wasBackgrounded.value) {
      wasBackgrounded.value = false;

      if (!isVisible) {
        return;
      }

      Future.microtask(onInitialize);
    }
  });
}
