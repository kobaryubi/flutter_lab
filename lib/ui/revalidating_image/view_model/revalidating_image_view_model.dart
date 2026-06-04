import 'dart:io';

import 'package:flutter_lab/ui/revalidating_image/ui_state/revalidating_image_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'revalidating_image_view_model.g.dart';

/// ViewModel that fetches the debug image URL served by the nginx asset server.
@riverpod
class RevalidatingImageViewModel extends _$RevalidatingImageViewModel {
  @override
  RevalidatingImageUiState build() => const RevalidatingImageUiState();

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
    // Dummy delay so the `loading` state is visible before `data`.
    await Future<void>.delayed(const Duration(seconds: 1));

    const localHost = String.fromEnvironment('LOCAL_HOST');
    final host = localHost.isNotEmpty
        ? localHost
        : (Platform.isAndroid ? '10.0.2.2' : 'localhost');

    return Uri.parse('http://$host:8081/images/etag-debug.png');
  }
}
