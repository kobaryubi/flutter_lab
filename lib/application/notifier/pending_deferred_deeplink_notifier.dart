import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pending_deferred_deeplink_notifier.g.dart';

/// Holds the most recent deferred deep link delivered by the Adjust SDK.
///
/// State is `null` when no link is pending. Once [consume] is called, later
/// captures are ignored — this mirrors the docs' `hasCompletedOnboarding`
/// guard so a late callback cannot re-open the link after the app has
/// finished onboarding.
@Riverpod(keepAlive: true)
class PendingDeferredDeeplinkNotifier
    extends _$PendingDeferredDeeplinkNotifier {
  bool _consumed = false;

  @override
  String? build() => null;

  /// Stores [deeplink] as the pending link, unless onboarding already
  /// completed via [consume].
  void capture({required String deeplink}) {
    if (_consumed) return;

    state = deeplink;
  }

  /// Marks onboarding complete, clears any pending link, and prevents
  /// future captures.
  void consume() {
    _consumed = true;
    state = null;
  }
}
