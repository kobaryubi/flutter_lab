import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/domain/location/location.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/location/view_model/location_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Location')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationAsyncValue = ref.watch(
      locationViewModelProvider.select((it) => it.location),
    );
    final watchedLocationAsyncValue = ref.watch(
      locationViewModelProvider.select((it) => it.watchedLocation),
    );

    useEffect(() {
      ref.read(locationViewModelProvider.notifier).getLocation();
      return null;
    }, const []);

    if (locationAsyncValue == null || locationAsyncValue.isLoading) {
      return const Text('Loading...');
    }

    if (locationAsyncValue.hasError) {
      return Text('Error: ${locationAsyncValue.error}');
    }

    final location = locationAsyncValue.value!;

    final oppositeLatitude = -location.latitude;
    var oppositeLongitude = location.longitude + 180;
    if (oppositeLongitude > 180) {
      oppositeLongitude -= 360;
    }

    /// Starts watching for continuous location updates.
    void handleWatchLocation() {
      ref.read(locationViewModelProvider.notifier).watchLocation();
    }

    return Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: const .fromLTRB(16, 16, 16, 0),
          child: Text(
            '現在緯度: ${location.latitude.toStringAsFixed(2)}, 現在経度: ${location.longitude.toStringAsFixed(2)}',
          ),
        ),
        Padding(
          padding: const .all(16),
          child: Text(
            '反転緯度: ${oppositeLatitude.toStringAsFixed(2)}, 反転経度: ${oppositeLongitude.toStringAsFixed(2)}',
          ),
        ),
        Padding(
          padding: const .symmetric(horizontal: 16),
          child: GestureDetector(
            onTap: handleWatchLocation,
            child: const Text('Watch Location'),
          ),
        ),
        if (watchedLocationAsyncValue != null)
          Padding(
            padding: const .all(16),
            child: _WatchedLocationText(
              watchedLocation: watchedLocationAsyncValue,
            ),
          ),
      ],
    );
  }
}

class _WatchedLocationText extends StatelessWidget {
  const _WatchedLocationText({required this.watchedLocation});

  final AsyncValue<Location> watchedLocation;

  @override
  Widget build(BuildContext context) {
    if (watchedLocation.isLoading) {
      return const Text('Watching...');
    }

    if (watchedLocation.hasError) {
      return Text('Watch Error: ${watchedLocation.error}');
    }

    if (watchedLocation case AsyncData(:final value)) {
      return Text(
        'Watched 緯度: ${value.latitude.toStringAsFixed(2)}, '
        '経度: ${value.longitude.toStringAsFixed(2)}',
      );
    }

    return const SizedBox.shrink();
  }
}
