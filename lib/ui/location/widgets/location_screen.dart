import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/location/view_model/location_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      appBar: AppBar(title: Text('Location')),
      child: _Body(),
    );
  }
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(locationViewModelProvider.notifier);
    final locationAsyncValue = ref.watch(
      locationViewModelProvider.select((it) => it.location),
    );

    useEffect(() {
      vm.getLocation();
      return null;
    }, []);

    if (locationAsyncValue == null || locationAsyncValue.isLoading) {
      return const Text('Loading...');
    }

    if (locationAsyncValue.hasError) {
      return Text('Error: ${locationAsyncValue.error}');
    }

    return const Center(
      child: Text('Location Screen'),
    );
  }
}
