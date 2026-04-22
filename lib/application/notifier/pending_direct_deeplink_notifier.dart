import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pending_direct_deeplink_notifier.g.dart';

/// Holds the most recent direct deep link delivered by the Adjust SDK.
///
/// State is `null` when no link is pending. Unlike the deferred flow, there
/// is no "consumed" lock — direct deep links can arrive repeatedly while
/// the app is running (each universal link / app link opens a new one).
@Riverpod(keepAlive: true)
class PendingDirectDeeplinkNotifier extends _$PendingDirectDeeplinkNotifier {
  @override
  String? build() => null;

  /// Stores [deeplink] as the pending link, replacing any previous value.
  // ignore: use_setters_to_change_properties, matches capture() on the deferred notifier for API symmetry.
  void capture({required String deeplink}) {
    state = deeplink;
  }

  /// Clears the pending link.
  void clear() {
    state = null;
  }
}
