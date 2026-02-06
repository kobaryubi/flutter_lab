import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/domain/entity/pet/pet.dart';
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
    final vm = ref.read(petStoreViewModelProvider.notifier);

    /// Handles the add pet button press.
    final onAddPetButtonPressed = useCallback(() {
      vm.createPet(const Pet(id: 1, name: 'New Pet'));
    }, [vm]);

    return Column(
      children: [
        Button(onTap: onAddPetButtonPressed, label: 'Add Pet'),
      ],
    );
  }
}

@Preview(name: 'PetStoreScreen')
Widget preview() => const _Body();
