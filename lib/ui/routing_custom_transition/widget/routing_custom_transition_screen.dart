import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/routing_custom_transition/ui_state/routing_custom_transition_ui_state.dart';
import 'package:flutter_lab/ui/routing_custom_transition/view_model/routing_custom_transition_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen that fetches data on initialization and slides up from the bottom
/// once the data has loaded.
class RoutingCustomTransitionScreen extends HookConsumerWidget {
  const RoutingCustomTransitionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(routingCustomTransitionViewModelProvider);
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 300),
    );

    /// Starts the slide-up animation once the initial fetch completes.
    void handleUiStateChanged(
      RoutingCustomTransitionUiState? previous,
      RoutingCustomTransitionUiState next,
    ) {
      if (next.data is AsyncData) {
        animationController.forward();
      }
    }

    ref.listen(routingCustomTransitionViewModelProvider, handleUiStateChanged);

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref
              .read(routingCustomTransitionViewModelProvider.notifier)
              .fetchData();
        });

        return null;
      },
      const [],
    );

    return SlideTransition(
      position: animationController.drive(
        Tween(begin: const Offset(0, 1), end: Offset.zero),
      ),
      child: Layout(
        appBar: const AppBar(
          title: Text('routing custom transition'),
        ),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            if (uiState.data case AsyncData(:final value)) Text(value),
          ],
        ),
      ),
    );
  }
}
