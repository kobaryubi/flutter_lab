import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/entity/exception/domain_exception.dart';
import 'package:flutter_lab/ui/error_handling/ui_state/error_handling_screen_error.dart';
import 'package:flutter_lab/ui/error_handling/ui_state/error_handling_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'error_handling_view_model.g.dart';

/// ViewModel for the error-handling sample screen.
///
/// Owns the translation from domain exceptions to
/// [ErrorHandlingScreenError] so the view can render a dedicated error
/// widget per presentation-level variant without importing domain types.
@riverpod
class ErrorHandlingViewModel extends _$ErrorHandlingViewModel {
  @override
  ErrorHandlingUiState build() => const ErrorHandlingUiState();

  /// Triggers a successful fetch.
  Future<void> fetchSuccess() => _fetch();

  /// Simulates a not-found failure.
  Future<void> fetchNotFound() =>
      _fetch(simulatedFailure: const DomainException.notFound());

  /// Simulates a permission-denied failure.
  Future<void> fetchPermissionDenied() =>
      _fetch(simulatedFailure: const DomainException.permissionDenied());

  /// Simulates a service-unavailable failure.
  Future<void> fetchUnavailable() =>
      _fetch(simulatedFailure: const DomainException.unavailable());

  /// Simulates an unknown failure that falls through to the generic bucket.
  Future<void> fetchUnknown() =>
      _fetch(simulatedFailure: const DomainException.unknown());

  /// Calls the use case inside [AsyncValue.guard] and translates any
  /// thrown [DomainException] into an [ErrorHandlingScreenError] so the
  /// view never has to pattern-match on domain types.
  Future<void> _fetch({DomainException? simulatedFailure}) async {
    state = state.copyWith(message: const AsyncLoading());

    final useCase = ref.read(fetchSampleMessageUseCaseProvider);
    final message = await AsyncValue.guard(() async {
      try {
        return (await useCase.call(
          simulatedFailure: simulatedFailure,
        )).getOrThrow();
      } on DomainException catch (exception) {
        throw _toScreenError(exception);
      }
    });

    state = state.copyWith(message: message);
  }

  /// Maps a [DomainException] onto the presentation-level
  /// [ErrorHandlingScreenError] variant the view knows how to render.
  ErrorHandlingScreenError _toScreenError(DomainException exception) =>
      switch (exception) {
        NotFound() => const ErrorHandlingScreenError.notFound(),
        PermissionDenied() => const ErrorHandlingScreenError.permissionDenied(),
        Unavailable() => const ErrorHandlingScreenError.unavailable(),
        _ => const ErrorHandlingScreenError.generic(),
      };
}
