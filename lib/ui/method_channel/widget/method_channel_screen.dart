import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/domain/location/location.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/method_channel/view_model/method_channel_view_model.dart';
import 'package:flutter_lab/ui/method_channel/widget/map.dart';
import 'package:flutter_lab/ui/method_channel/widget/native_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen for learning method channel communication with native platforms.
class MethodChannelScreen extends StatelessWidget {
  const MethodChannelScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Method Channel')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(methodChannelViewModelProvider);

    useEffect(() {
      ref.read(methodChannelViewModelProvider.notifier)
        ..getLocation()
        ..getBatteryLevel();
      return null;
    }, const []);

    /// Starts watching for continuous location updates.
    void handleWatchLocation() {
      ref.read(methodChannelViewModelProvider.notifier).watchLocation();
    }

    final location = uiState.location;
    final batteryLevel = uiState.batteryLevel;

    return Column(
      crossAxisAlignment: .start,
      children: [
        if (location.isLoading) const Text('Loading location...'),
        if (location case AsyncError(:final error))
          Text('Location Error: $error'),
        if (location case AsyncData(:final value)) ...[
          Text('Latitude: ${value.latitude}'),
          Text('Longitude: ${value.longitude}'),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Map(
              latitude: value.latitude,
              longitude: value.longitude,
            ),
          ),
        ],
        const SizedBox(height: 16),
        if (batteryLevel.isLoading) const Text('Loading battery level...'),
        if (batteryLevel case AsyncError(:final error))
          Text('Battery Error: $error'),
        if (batteryLevel case AsyncData(:final value))
          Text('Battery level at ${value.level}%.'),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: handleWatchLocation,
          child: const Text('Watch Location'),
        ),
        const SizedBox(height: 16),
        const SizedBox(
          height: 44,
          width: double.infinity,
          child: NativeButton(),
        ),
        Text('Button tap count: ${uiState.buttonTapCount}'),
        const SizedBox(height: 16),
        if (uiState.watchedLocation case AsyncData() || AsyncError())
          Padding(
            padding: const .only(top: 16),
            child: _WatchedLocationText(
              watchedLocation: uiState.watchedLocation!,
            ),
          ),
      ],
    );
  }
}

/// Displays the watched location data based on its [AsyncValue] state.
class _WatchedLocationText extends StatelessWidget {
  const _WatchedLocationText({required this.watchedLocation});

  final AsyncValue<Location> watchedLocation;

  @override
  Widget build(BuildContext context) {
    if (watchedLocation.isLoading) {
      return const Text('Watching...');
    }

    if (watchedLocation case AsyncError(:final error)) {
      return Text('Watch Error: $error');
    }

    if (watchedLocation case AsyncData(:final value)) {
      return Text(
        'Watched Latitude: ${value.latitude}, '
        'Longitude: ${value.longitude}',
      );
    }

    return const SizedBox.shrink();
  }
}
