import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/adfurikun/ui_state/adfurikun_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'adfurikun_view_model.g.dart';

/// ViewModel for the Adfurikun ads demo screen.
///
/// Provides methods to initialize, load, and play
/// both interstitial and reward ads.
@riverpod
class AdfurikunViewModel extends _$AdfurikunViewModel {
  @override
  AdfurikunUiState build() => const AdfurikunUiState();

  /// Initializes an interstitial ad for the given app ID.
  Future<void> initializeInterstitialAd({required String appId}) async {
    final useCase = ref.read(initializeAdfurikunInterstitialAdUseCaseProvider);

    final initializeInterstitialAd = await AsyncValue.guard(
      () async => (await useCase.call(appId: appId)).getOrThrow(),
    );

    state = state.copyWith(initializeInterstitialAd: initializeInterstitialAd);
  }

  /// Loads an interstitial ad for the given app ID.
  Future<void> loadInterstitialAd({required String appId}) async {
    final useCase = ref.read(loadAdfurikunInterstitialAdUseCaseProvider);

    final loadInterstitialAd = await AsyncValue.guard(
      () async => (await useCase.call(appId: appId)).getOrThrow(),
    );

    state = state.copyWith(loadInterstitialAd: loadInterstitialAd);
  }

  /// Plays an interstitial ad for the given app ID.
  Future<void> playInterstitialAd({required String appId}) async {
    final useCase = ref.read(playAdfurikunInterstitialAdUseCaseProvider);

    final playInterstitialAd = await AsyncValue.guard(
      () async => (await useCase.call(appId: appId)).getOrThrow(),
    );

    state = state.copyWith(playInterstitialAd: playInterstitialAd);
  }

  /// Initializes a reward ad for the given app ID.
  Future<void> initializeRewardAd({required String appId}) async {
    final useCase = ref.read(initializeAdfurikunRewardAdUseCaseProvider);

    final initializeRewardAd = await AsyncValue.guard(
      () async => (await useCase.call(appId: appId)).getOrThrow(),
    );

    state = state.copyWith(initializeRewardAd: initializeRewardAd);
  }

  /// Loads a reward ad for the given app ID.
  Future<void> loadRewardAd({required String appId}) async {
    final useCase = ref.read(loadAdfurikunRewardAdUseCaseProvider);

    final loadRewardAd = await AsyncValue.guard(
      () async => (await useCase.call(appId: appId)).getOrThrow(),
    );

    state = state.copyWith(loadRewardAd: loadRewardAd);
  }

  /// Plays a reward ad for the given app ID.
  Future<void> playRewardAd({required String appId}) async {
    final useCase = ref.read(playAdfurikunRewardAdUseCaseProvider);
    final gateway = ref.read(adfurikunGatewayProvider);

    final playRewardAd = await AsyncValue.guard(
      () async => (await useCase.call(appId: appId)).getOrThrow(),
    );

    state = state.copyWith(
      playRewardAd: playRewardAd,
      isRewardEarned: gateway.isRewarded(appId: appId),
    );
  }
}
