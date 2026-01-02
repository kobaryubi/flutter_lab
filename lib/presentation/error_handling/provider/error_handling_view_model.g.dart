// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_handling_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ErrorHandlingViewModel)
const errorHandlingViewModelProvider = ErrorHandlingViewModelProvider._();

final class ErrorHandlingViewModelProvider
    extends $NotifierProvider<ErrorHandlingViewModel, ErrorHandlingUiState> {
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
    r'2880725566527cde13c1926b13b800a6ce979673';

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
