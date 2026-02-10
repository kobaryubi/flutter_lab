import 'package:flutter/widgets.dart';
import 'package:flutter_lab/domain/entity/network/connectivity_status.dart';
import 'package:flutter_lab/presentation/core/hook/use_connectivity.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen to display network connectivity status.
class NetworkScreen extends StatelessWidget {
  const NetworkScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Network')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connectivity = useConnectivity(ref: ref);

    return Column(
      crossAxisAlignment: .stretch,
      children: [
        if (connectivity case ConnectivityStatus(:final connectivities))
          Text('Connectivity: ${connectivities.join(', ')}'),
      ],
    );
  }
}
