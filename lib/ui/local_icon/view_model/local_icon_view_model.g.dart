// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_icon_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that manages copying and deleting shortcut icons.

@ProviderFor(LocalIconViewModel)
const localIconViewModelProvider = LocalIconViewModelProvider._();

/// ViewModel that manages copying and deleting shortcut icons.
final class LocalIconViewModelProvider
    extends $NotifierProvider<LocalIconViewModel, LocalIconUiState> {
  /// ViewModel that manages copying and deleting shortcut icons.
  const LocalIconViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'localIconViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$localIconViewModelHash();

  @$internal
  @override
  LocalIconViewModel create() => LocalIconViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocalIconUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocalIconUiState>(value),
    );
  }
}

String _$localIconViewModelHash() =>
    r'218d22b000871deb0c1b994d596cd587e120f32c';

/// ViewModel that manages copying and deleting shortcut icons.

abstract class _$LocalIconViewModel extends $Notifier<LocalIconUiState> {
  LocalIconUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LocalIconUiState, LocalIconUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LocalIconUiState, LocalIconUiState>,
              LocalIconUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
