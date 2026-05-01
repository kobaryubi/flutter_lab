import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pending_deeplink_notifier.g.dart';

/// Notifier that holds a deeplink captured from an external source
/// (e.g. Adjust SDK) until the app is ready to navigate.
///
/// Typical flow: an SDK callback calls [save] with the resolved URI,
/// and a post-login listener reads the state, navigates, then calls
/// [consume] so the same deeplink is not fired twice.
@Riverpod(keepAlive: true)
class PendingDeeplinkNotifier extends _$PendingDeeplinkNotifier {
  @override
  Uri? build() => null;

  /// Stores a deeplink to be fired later.
  // ignore: use_setters_to_change_properties
  void save({required Uri uri}) {
    state = uri;
  }

  /// Clears the stored deeplink after it has been handled.
  void consume() {
    state = null;
  }
}
