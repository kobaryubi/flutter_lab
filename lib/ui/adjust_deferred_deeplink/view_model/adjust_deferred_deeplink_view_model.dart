import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/application/notifier/pending_deferred_deeplink_notifier.dart';
import 'package:flutter_lab/application/notifier/pending_direct_deeplink_notifier.dart';
import 'package:flutter_lab/data/gateway/adjust/mock_adjust_gateway.dart';
import 'package:flutter_lab/ui/adjust_deferred_deeplink/ui_state/adjust_deferred_deeplink_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'adjust_deferred_deeplink_view_model.g.dart';

/// Sample URL used to demo the deferred deep link flow.
const _sampleDeeplink = 'flutter-lab://onboarding/promo?coupon=WELCOME';

/// Sample URL used to demo the direct deep link flow.
const _sampleDirectDeeplink = 'flutter-lab://product/42?ref=push';

/// ViewModel for the Adjust deferred deep link sample screen.
///
/// Watches [pendingDeferredDeeplinkProvider] so the UI reflects the link
/// captured by the Adjust SDK at app startup, and exposes operations to
/// drive the demo flow.
@riverpod
class AdjustDeferredDeeplinkViewModel
    extends _$AdjustDeferredDeeplinkViewModel {
  @override
  AdjustDeferredDeeplinkUiState build() {
    final pendingDeeplink = ref.watch(pendingDeferredDeeplinkProvider);
    final pendingDirectDeeplink = ref.watch(pendingDirectDeeplinkProvider);

    return AdjustDeferredDeeplinkUiState(
      pendingDeeplink: pendingDeeplink,
      pendingDirectDeeplink: pendingDirectDeeplink,
    );
  }

  /// Triggers the mock gateway to deliver a fake deferred deep link.
  ///
  /// Demonstrates the flow without needing a real Adjust install referrer.
  /// Has no effect when the SDK gateway binding is active.
  void simulateDeferredDeeplink() {
    final gateway = ref.read(adjustGatewayProvider);

    if (gateway is! MockAdjustGateway) return;

    gateway.simulateDeferredDeeplink(deeplink: _sampleDeeplink);
  }

  /// Triggers the mock gateway to deliver a fake direct deep link.
  ///
  /// Demonstrates the flow without needing a real universal link / app
  /// link. Has no effect when the SDK gateway binding is active.
  void simulateDirectDeeplink() {
    final gateway = ref.read(adjustGatewayProvider);

    if (gateway is! MockAdjustGateway) return;

    gateway.simulateDirectDeeplink(deeplink: _sampleDirectDeeplink);
  }

  /// Marks onboarding complete, clearing any pending link and locking the
  /// notifier so future captures are ignored.
  void completeOnboarding() {
    ref.read(pendingDeferredDeeplinkProvider.notifier).consume();
  }

  /// Clears the pending direct deep link.
  void clearDirectDeeplink() {
    ref.read(pendingDirectDeeplinkProvider.notifier).clear();
  }

  /// Fetches the Adjust Device Identifier (ADID) and stores it in UI state.
  Future<void> loadAdid() async {
    final useCase = ref.read(getAdidUseCaseProvider);

    final adid = await AsyncValue.guard(
      () async => (await useCase.call()).getOrThrow(),
    );

    state = state.copyWith(adid: adid);
  }
}
