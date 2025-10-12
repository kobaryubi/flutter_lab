import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/domain/models/pet/pet.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:flutter_lab/ui/core/ui/scaffold.dart';
import 'package:flutter_lab/ui/petstore/view_model/petstore_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PetStoreScreen extends HookWidget {
  const PetStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBar(title: Text('PetStore')),
      body: _Body(),
    );
  }
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final petsAsyncValue = ref.watch(
      petStoreViewModelProvider.select((it) => it.pets),
    );
    final vm = ref.read(petStoreViewModelProvider.notifier);

    useEffect(() {
      vm.listPets();
      return null;
    }, []);

    if (petsAsyncValue == null || petsAsyncValue.isLoading) {
      return const Text('Loading...');
    }

    if (petsAsyncValue.hasError) {
      return Text('Error: ${petsAsyncValue.error}');
    }

    final pets = petsAsyncValue.value ?? [];

    final onAddPetButtonPressed = useCallback(() {
      vm.createPet(const Pet(id: 1, name: 'New Pet'));
    }, [vm]);

    final listView = ListView.builder(
      itemCount: pets.length,
      itemBuilder: (context, index) {
        final pet = pets[index];
        return Text(pet.name);
      },
    );

    return Column(
      children: [
        Button(onPressed: onAddPetButtonPressed, label: 'Add Pet'),
        listView,
      ],
    );
  }
}

@Preview(name: 'PetStoreScreen')
Widget preview() => const _Body();
