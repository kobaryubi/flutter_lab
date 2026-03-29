import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/max/ui_state/max_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'max_view_model.g.dart';

/// ViewModel for the MAX SDK rewarded ads demo screen.
///
/// Provides methods to load and show rewarded ads.
@riverpod
class MaxViewModel extends _$MaxViewModel {
  @override
  MaxUiState build() => const MaxUiState();

  /// Initializes the AppLovin MAX SDK.
  Future<void> initialize() async {
    final useCase = ref.read(initializeMaxUseCaseProvider);

    final initialize = await AsyncValue.guard(
      () async => (await useCase.call()).getOrThrow(),
    );

    state = state.copyWith(initialize: initialize);
  }

  /// Loads a rewarded ad for the given [adUnitId].
  ///
  /// Completes when the ad is loaded and ready to be shown.
  Future<void> loadRewardedAd({required String adUnitId}) async {
    final useCase = ref.read(loadRewardedAdUseCaseProvider);

    final loadRewardedAd = await AsyncValue.guard(
      () async => (await useCase.call(adUnitId: adUnitId)).getOrThrow(),
    );

    state = state.copyWith(loadRewardedAd: loadRewardedAd);
  }

  /// Shows a rewarded ad for the given [adUnitId].
  Future<void> showRewardedAd({required String adUnitId}) async {
    final useCase = ref.read(showRewardedAdUseCaseProvider);
    final gateway = ref.read(maxGatewayProvider);

    final showRewardedAd = await AsyncValue.guard(
      () async => (await useCase.call(adUnitId: adUnitId)).getOrThrow(),
    );

    state = state.copyWith(
      showRewardedAd: showRewardedAd,
      isRewardEarned: gateway.isRewarded(adUnitId: adUnitId),
    );
  }

  /// Opens the AppLovin mediation debugger overlay.
  void showMediationDebugger() {
    ref.read(showMediationDebuggerUseCaseProvider).call();
  }
}
