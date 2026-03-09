import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:result_dart/result_dart.dart';

part 'profile_passport_ui_state.freezed.dart';

/// UI state for the ProfilePassport SDK demo screen.
@freezed
abstract class ProfilePassportUiState with _$ProfilePassportUiState {
  const factory ProfilePassportUiState({
    /// Result of starting the PPSDK service.
    AsyncValue<Unit>? startService,
  }) = _ProfilePassportUiState;
}
