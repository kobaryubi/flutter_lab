// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_cache_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that manages dio cache fetch and clear operations.

@ProviderFor(DioCacheViewModel)
const dioCacheViewModelProvider = DioCacheViewModelProvider._();

/// ViewModel that manages dio cache fetch and clear operations.
final class DioCacheViewModelProvider
    extends $NotifierProvider<DioCacheViewModel, DioCacheUiState> {
  /// ViewModel that manages dio cache fetch and clear operations.
  const DioCacheViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioCacheViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioCacheViewModelHash();

  @$internal
  @override
  DioCacheViewModel create() => DioCacheViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DioCacheUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DioCacheUiState>(value),
    );
  }
}

String _$dioCacheViewModelHash() => r'd4c5a4ee77e26b0d48fae127bc11eeae7fc216f8';

/// ViewModel that manages dio cache fetch and clear operations.

abstract class _$DioCacheViewModel extends $Notifier<DioCacheUiState> {
  DioCacheUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<DioCacheUiState, DioCacheUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DioCacheUiState, DioCacheUiState>,
              DioCacheUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
