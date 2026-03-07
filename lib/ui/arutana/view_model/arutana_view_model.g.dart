// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arutana_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the Arutana ad SDK demo screen.
///
/// Provides methods to initialize interstitial and movie ads.

@ProviderFor(ArutanaViewModel)
const arutanaViewModelProvider = ArutanaViewModelProvider._();

/// ViewModel for the Arutana ad SDK demo screen.
///
/// Provides methods to initialize interstitial and movie ads.
final class ArutanaViewModelProvider
    extends $NotifierProvider<ArutanaViewModel, ArutanaUiState> {
  /// ViewModel for the Arutana ad SDK demo screen.
  ///
  /// Provides methods to initialize interstitial and movie ads.
  const ArutanaViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'arutanaViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$arutanaViewModelHash();

  @$internal
  @override
  ArutanaViewModel create() => ArutanaViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ArutanaUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ArutanaUiState>(value),
    );
  }
}

String _$arutanaViewModelHash() => r'b9b6254c9f7c42c973bc5da5aa12dc232cba1f15';

/// ViewModel for the Arutana ad SDK demo screen.
///
/// Provides methods to initialize interstitial and movie ads.

abstract class _$ArutanaViewModel extends $Notifier<ArutanaUiState> {
  ArutanaUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ArutanaUiState, ArutanaUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ArutanaUiState, ArutanaUiState>,
              ArutanaUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
