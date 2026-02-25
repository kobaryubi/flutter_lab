// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pigeon_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the Pigeon demo screen.
///
/// Demonstrates calling both HostApi and FlutterApi via Pigeon.

@ProviderFor(PigeonViewModel)
const pigeonViewModelProvider = PigeonViewModelProvider._();

/// ViewModel for the Pigeon demo screen.
///
/// Demonstrates calling both HostApi and FlutterApi via Pigeon.
final class PigeonViewModelProvider
    extends $NotifierProvider<PigeonViewModel, PigeonUiState> {
  /// ViewModel for the Pigeon demo screen.
  ///
  /// Demonstrates calling both HostApi and FlutterApi via Pigeon.
  const PigeonViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pigeonViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pigeonViewModelHash();

  @$internal
  @override
  PigeonViewModel create() => PigeonViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PigeonUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PigeonUiState>(value),
    );
  }
}

String _$pigeonViewModelHash() => r'86e9bb1ed60c4d0fdc7bf39bf6f147e4c178d245';

/// ViewModel for the Pigeon demo screen.
///
/// Demonstrates calling both HostApi and FlutterApi via Pigeon.

abstract class _$PigeonViewModel extends $Notifier<PigeonUiState> {
  PigeonUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PigeonUiState, PigeonUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PigeonUiState, PigeonUiState>,
              PigeonUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
