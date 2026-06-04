import 'dart:io';

import 'package:flutter_lab/data/cache/revalidating_image_cache_manager.dart';
import 'package:flutter_lab/ui/revalidating_image/ui_state/revalidating_image_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'revalidating_image_view_model.g.dart';

/// ViewModel that fetches the debug image URL and tracks the latest
/// revalidation status reported by [RevalidatingImageCacheManager].
@riverpod
class RevalidatingImageViewModel extends _$RevalidatingImageViewModel {
  @override
  RevalidatingImageUiState build() {
    final subscription = RevalidatingImageCacheManager().revalidationStatusCodes
        .listen(_onRevalidationStatus);
    ref.onDispose(subscription.cancel);

    return const RevalidatingImageUiState();
  }

  /// Records the HTTP status code (`304`/`200`) of the latest revalidation.
  void _onRevalidationStatus(int statusCode) {
    state = state.copyWith(lastStatusCode: statusCode);
  }

  /// Fetches the debug image URL, transitioning the state `loading -> data`.
  ///
  /// The URL itself is unchanged across calls; re-fetching exists so the view
  /// can re-resolve the image and trigger another ETag revalidation.
  Future<void> fetchImageUrl() async {
    state = state.copyWith(imageUrl: const AsyncLoading<Uri>());

    final imageUrl = await AsyncValue.guard(_resolveImageUrl);

    state = state.copyWith(imageUrl: imageUrl);
  }

  /// Builds the nginx debug-image URL for the current run target.
  ///
  /// `LOCAL_HOST` (the Mac's LAN IP) is injected via
  /// `--dart-define-from-file=.dart_define/local.env`, which is what lets a
  /// physical iOS device reach the host machine. When it is absent it falls
  /// back to the emulator/simulator host: `10.0.2.2` on Android, else
  /// `localhost`.
  Future<Uri> _resolveImageUrl() async {
    const localHost = String.fromEnvironment('LOCAL_HOST');
    final host = localHost.isNotEmpty
        ? localHost
        : (Platform.isAndroid ? '10.0.2.2' : 'localhost');

    return Uri.parse('http://$host:8081/images/etag-debug.png');
  }
}
