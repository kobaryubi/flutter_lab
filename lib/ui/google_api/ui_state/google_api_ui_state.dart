import 'package:flutter_lab/domain/google_api/google_api_availability.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'google_api_ui_state.freezed.dart';

/// UI state for the Google API availability screen.
@freezed
abstract class GoogleApiUiState with _$GoogleApiUiState {
  const factory GoogleApiUiState({
    required AsyncValue<GoogleApiAvailability> availability,
  }) = _GoogleApiUiState;
}
