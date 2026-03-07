import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/arutana/ui_state/arutana_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'arutana_view_model.g.dart';

/// ViewModel for the Arutana ad SDK demo screen.
///
/// Provides methods to initialize interstitial and movie ads.
@riverpod
class ArutanaViewModel extends _$ArutanaViewModel {
  @override
  ArutanaUiState build() => const ArutanaUiState();

  /// Initializes an interstitial ad via the Arutana gateway.
  Future<void> initializeInterstitialAd() async {
    final gateway = ref.read(arutanaGatewayProvider);

    final interstitialAd = await AsyncValue.guard(
      () async => (await gateway.initializeInterstitialAd()).getOrThrow(),
    );

    state = state.copyWith(interstitialAd: interstitialAd);
  }

  /// Initializes a movie ad via the Arutana gateway.
  Future<void> initializeMovieAd() async {
    final gateway = ref.read(arutanaGatewayProvider);

    final movieAd = await AsyncValue.guard(
      () async => (await gateway.initializeMovieAd()).getOrThrow(),
    );

    state = state.copyWith(movieAd: movieAd);
  }
}
