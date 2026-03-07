import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/max/ui_state/max_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'max_view_model.g.dart';

/// ViewModel for the MAX SDK rewarded ads demo screen.
///
/// Provides methods to initialize the SDK, load, and show rewarded ads.
@riverpod
class MaxViewModel extends _$MaxViewModel {
  @override
  MaxUiState build() => const MaxUiState();

  /// Initializes the AppLovin MAX SDK.
  Future<void> initialize() async {
    final useCase = ref.read(initializeMaxUseCaseProvider);

    final initialization = await AsyncValue.guard(
      () async => (await useCase.call()).getOrThrow(),
    );

    state = state.copyWith(initialization: initialization);
  }

  /// Loads a rewarded ad.
  Future<void> loadRewardedAd() async {
    final useCase = ref.read(loadRewardedAdUseCaseProvider);

    final loadRewardedAd = await AsyncValue.guard(
      () async => (await useCase.call()).getOrThrow(),
    );

    state = state.copyWith(loadRewardedAd: loadRewardedAd);
  }

  /// Checks whether a rewarded ad is ready to be shown.
  Future<void> isRewardedAdReady() async {
    final useCase = ref.read(isRewardedAdReadyUseCaseProvider);

    final isRewardedAdReady = await AsyncValue.guard(
      () async => (await useCase.call()).getOrThrow(),
    );

    state = state.copyWith(isRewardedAdReady: isRewardedAdReady);
  }

  /// Shows a rewarded ad.
  Future<void> showRewardedAd() async {
    final useCase = ref.read(showRewardedAdUseCaseProvider);

    final showRewardedAd = await AsyncValue.guard(
      () async => (await useCase.call()).getOrThrow(),
    );

    state = state.copyWith(showRewardedAd: showRewardedAd);
  }
}
