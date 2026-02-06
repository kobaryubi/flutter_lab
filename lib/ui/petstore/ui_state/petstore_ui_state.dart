import 'package:freezed_annotation/freezed_annotation.dart';

part 'petstore_ui_state.freezed.dart';

@freezed
abstract class PetStoreUiState with _$PetStoreUiState {
  const factory PetStoreUiState() = _PetStoreUiState;
}
