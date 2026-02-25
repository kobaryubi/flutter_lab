// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'etag_cache_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that manages ETag cache fetch and clear operations.

@ProviderFor(EtagCacheViewModel)
const etagCacheViewModelProvider = EtagCacheViewModelProvider._();

/// ViewModel that manages ETag cache fetch and clear operations.
final class EtagCacheViewModelProvider
    extends $NotifierProvider<EtagCacheViewModel, EtagCacheUiState> {
  /// ViewModel that manages ETag cache fetch and clear operations.
  const EtagCacheViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'etagCacheViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$etagCacheViewModelHash();

  @$internal
  @override
  EtagCacheViewModel create() => EtagCacheViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EtagCacheUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EtagCacheUiState>(value),
    );
  }
}

String _$etagCacheViewModelHash() =>
    r'3b9a597496366482309c3c0b4b009deebda7876e';

/// ViewModel that manages ETag cache fetch and clear operations.

abstract class _$EtagCacheViewModel extends $Notifier<EtagCacheUiState> {
  EtagCacheUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<EtagCacheUiState, EtagCacheUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EtagCacheUiState, EtagCacheUiState>,
              EtagCacheUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
