// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog_state_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the dialog state closure experiment.
///
/// Manages a simple counter to demonstrate closure capture behavior
/// when a handler is passed to a dialog.

@ProviderFor(DialogStateViewModel)
const dialogStateViewModelProvider = DialogStateViewModelProvider._();

/// ViewModel for the dialog state closure experiment.
///
/// Manages a simple counter to demonstrate closure capture behavior
/// when a handler is passed to a dialog.
final class DialogStateViewModelProvider
    extends $NotifierProvider<DialogStateViewModel, DialogStateUiState> {
  /// ViewModel for the dialog state closure experiment.
  ///
  /// Manages a simple counter to demonstrate closure capture behavior
  /// when a handler is passed to a dialog.
  const DialogStateViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dialogStateViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dialogStateViewModelHash();

  @$internal
  @override
  DialogStateViewModel create() => DialogStateViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DialogStateUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DialogStateUiState>(value),
    );
  }
}

String _$dialogStateViewModelHash() =>
    r'0000000000000000000000000000000000000000';

/// ViewModel for the dialog state closure experiment.
///
/// Manages a simple counter to demonstrate closure capture behavior
/// when a handler is passed to a dialog.

abstract class _$DialogStateViewModel extends $Notifier<DialogStateUiState> {
  DialogStateUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<DialogStateUiState, DialogStateUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DialogStateUiState, DialogStateUiState>,
              DialogStateUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
