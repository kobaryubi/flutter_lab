// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the permission handler demonstration screen.

@ProviderFor(PermissionViewModel)
const permissionViewModelProvider = PermissionViewModelProvider._();

/// ViewModel for the permission handler demonstration screen.
final class PermissionViewModelProvider
    extends $NotifierProvider<PermissionViewModel, PermissionUiState> {
  /// ViewModel for the permission handler demonstration screen.
  const PermissionViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'permissionViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$permissionViewModelHash();

  @$internal
  @override
  PermissionViewModel create() => PermissionViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PermissionUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PermissionUiState>(value),
    );
  }
}

String _$permissionViewModelHash() =>
    r'61f61c67aae9210152a5dbc473ee38bee93ef8f1';

/// ViewModel for the permission handler demonstration screen.

abstract class _$PermissionViewModel extends $Notifier<PermissionUiState> {
  PermissionUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PermissionUiState, PermissionUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PermissionUiState, PermissionUiState>,
              PermissionUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
