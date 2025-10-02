import 'package:flutter_lab/domain/models/pet/pet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'petstore_ui_state.freezed.dart';

@freezed
abstract class PetStoreUiState with _$PetStoreUiState {
  const factory PetStoreUiState({
    required AsyncValue<List<Pet>>? pets,
  }) = _PetStoreUiState;
}
