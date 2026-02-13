import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/device_info/view_model/device_info_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen that displays basic device information.
class DeviceInfoScreen extends StatelessWidget {
  const DeviceInfoScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Device Info')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(deviceInfoViewModelProvider);

    useEffect(() {
      ref.read(deviceInfoViewModelProvider.notifier).fetchDeviceInfo();
      return null;
    }, const []);

    final deviceInfo = uiState.deviceInfo;

    if (deviceInfo.isLoading) {
      return const Text('Loading...');
    }

    if (deviceInfo.hasError) {
      return Text('Error: ${deviceInfo.error}');
    }

    if (deviceInfo case AsyncData(:final value)) {
      return Padding(
        padding: const .all(16),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text('Model: ${value.model}'),
            Text('Manufacturer: ${value.manufacturer}'),
            Text('OS: ${value.osName}'),
            Text('OS Version: ${value.osVersion}'),
            Text('SDK Version: ${value.sdkVersion}'),
          ],
        ),
      );
    }

    return const SizedBox.shrink();
  }
}
