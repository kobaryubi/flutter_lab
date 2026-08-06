import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/routing_custom_transition/view_model/routing_custom_transition_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen that fetches data on initialization and shows it once loaded.
class RoutingCustomTransitionScreen extends HookConsumerWidget {
  const RoutingCustomTransitionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(routingCustomTransitionViewModelProvider);

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

    return Layout(
      appBar: const AppBar(
        title: Text('routing custom transition'),
      ),
      child: Column(
        mainAxisAlignment: .center,
        children: [
          if (uiState.data case AsyncData(:final value)) Text(value),
        ],
      ),
    );
  }
}
