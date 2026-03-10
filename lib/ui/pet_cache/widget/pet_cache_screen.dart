import 'package:flutter/widgets.dart';
import 'package:flutter_lab/domain/entity/pet/pet.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/pet_cache/view_model/pet_cache_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen to test per-request HTTP cache on petsGet endpoint.
class PetCacheScreen extends StatelessWidget {
  const PetCacheScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Pet Cache')),
    child: _Body(),
  );
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(petCacheViewModelProvider);
    final viewModel = ref.read(petCacheViewModelProvider.notifier);

    /// Fetches the list of pets.
    void handleFetchPets() {
      viewModel.listPets();
    }

    /// Clears the petsGet cache and resets the state.
    void handleClearCache() {
      viewModel.clearCache();
    }

    return Column(
      crossAxisAlignment: .stretch,
      children: [
        _ActionButtons(
          onFetchPets: handleFetchPets,
          onClearCache: handleClearCache,
        ),
        if (uiState.pets case AsyncLoading()) const Text('Loading...'),
        if (uiState.pets case AsyncData(:final value))
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: .start,
                children: value.map(_PetItem.new).toList(),
              ),
            ),
          ),
        if (uiState.pets case AsyncError(:final error)) Text('Error: $error'),
      ],
    );
  }
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons({
    required this.onFetchPets,
    required this.onClearCache,
  });

  final VoidCallback onFetchPets;
  final VoidCallback onClearCache;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      GestureDetector(
        onTap: onFetchPets,
        child: const Text('Fetch Pets'),
      ),
      GestureDetector(
        onTap: onClearCache,
        child: const Text('Clear Cache'),
      ),
    ],
  );
}

class _PetItem extends StatelessWidget {
  const _PetItem(this.pet);

  final Pet pet;

  @override
  Widget build(BuildContext context) => Text('${pet.id}: ${pet.name}');
}
