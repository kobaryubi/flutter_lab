// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_handling_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the error-handling sample screen.
///
/// Owns the translation from domain exceptions to
/// [ErrorHandlingScreenError] so the view can render a dedicated error
/// widget per presentation-level variant without importing domain types.

@ProviderFor(ErrorHandlingViewModel)
const errorHandlingViewModelProvider = ErrorHandlingViewModelProvider._();

/// ViewModel for the error-handling sample screen.
///
/// Owns the translation from domain exceptions to
/// [ErrorHandlingScreenError] so the view can render a dedicated error
/// widget per presentation-level variant without importing domain types.
final class ErrorHandlingViewModelProvider
    extends $NotifierProvider<ErrorHandlingViewModel, ErrorHandlingUiState> {
  /// ViewModel for the error-handling sample screen.
  ///
  /// Owns the translation from domain exceptions to
  /// [ErrorHandlingScreenError] so the view can render a dedicated error
  /// widget per presentation-level variant without importing domain types.
  const ErrorHandlingViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'errorHandlingViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$errorHandlingViewModelHash();

  @$internal
  @override
  ErrorHandlingViewModel create() => ErrorHandlingViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ErrorHandlingUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ErrorHandlingUiState>(value),
    );
  }
}

String _$errorHandlingViewModelHash() =>
    r'9e38e2498f8544ccfb1f84c940dbb1ffa6ccdc6f';

/// ViewModel for the error-handling sample screen.
///
/// Owns the translation from domain exceptions to
/// [ErrorHandlingScreenError] so the view can render a dedicated error
/// widget per presentation-level variant without importing domain types.

abstract class _$ErrorHandlingViewModel
    extends $Notifier<ErrorHandlingUiState> {
  ErrorHandlingUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ErrorHandlingUiState, ErrorHandlingUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ErrorHandlingUiState, ErrorHandlingUiState>,
              ErrorHandlingUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
