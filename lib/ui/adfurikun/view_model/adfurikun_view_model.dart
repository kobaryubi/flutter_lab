import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/adfurikun/ui_state/adfurikun_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'adfurikun_view_model.g.dart';

/// ViewModel for the Adfurikun ads demo screen.
///
/// Provides methods to initialize, load, and show
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

  /// Shows an interstitial ad for the given app ID.
  Future<void> showInterstitialAd({required String appId}) async {
    final useCase = ref.read(showAdfurikunInterstitialAdUseCaseProvider);

    final showInterstitialAd = await AsyncValue.guard(
      () async => (await useCase.call(appId: appId)).getOrThrow(),
    );

    state = state.copyWith(showInterstitialAd: showInterstitialAd);
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

  /// Shows a reward ad for the given app ID.
  Future<void> showRewardAd({required String appId}) async {
    final useCase = ref.read(showAdfurikunRewardAdUseCaseProvider);
    final gateway = ref.read(adfurikunGatewayProvider);

    final showRewardAd = await AsyncValue.guard(
      () async => (await useCase.call(appId: appId)).getOrThrow(),
    );

    state = state.copyWith(
      showRewardAd: showRewardAd,
      isRewardEarned: gateway.isRewardEarned(appId: appId),
    );
  }
}
