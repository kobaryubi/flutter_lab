import 'package:flutter_lab/domain/location/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'location_ui_state.freezed.dart';

@freezed
abstract class LocationUiState with _$LocationUiState {
  const factory LocationUiState({
    required AsyncValue<Location>? location,
  }) = _LocationUiState;
}
