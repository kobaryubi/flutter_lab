import 'package:flutter_lab/domain/entity/pet/pet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'pet_cache_ui_state.freezed.dart';

/// UI state for the PetCacheScreen.
///
/// `pets` is `null` for the initial state, [AsyncLoading] while fetching,
/// [AsyncData] on success, and [AsyncError] on failure.
@freezed
abstract class PetCacheUiState with _$PetCacheUiState {
  const factory PetCacheUiState({
    AsyncValue<List<Pet>>? pets,
  }) = _PetCacheUiState;
}
