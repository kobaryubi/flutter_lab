// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revalidating_image_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that fetches the debug image URL served by the nginx asset server.

@ProviderFor(RevalidatingImageViewModel)
const revalidatingImageViewModelProvider =
    RevalidatingImageViewModelProvider._();

/// ViewModel that fetches the debug image URL served by the nginx asset server.
final class RevalidatingImageViewModelProvider
    extends
        $NotifierProvider<
          RevalidatingImageViewModel,
          RevalidatingImageUiState
        > {
  /// ViewModel that fetches the debug image URL served by the nginx asset server.
  const RevalidatingImageViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'revalidatingImageViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$revalidatingImageViewModelHash();

  @$internal
  @override
  RevalidatingImageViewModel create() => RevalidatingImageViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RevalidatingImageUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RevalidatingImageUiState>(value),
    );
  }
}

String _$revalidatingImageViewModelHash() =>
    r'f6c5c89bd3cee1b26e4cd04d8f879dce48631e1f';

/// ViewModel that fetches the debug image URL served by the nginx asset server.

abstract class _$RevalidatingImageViewModel
    extends $Notifier<RevalidatingImageUiState> {
  RevalidatingImageUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<RevalidatingImageUiState, RevalidatingImageUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RevalidatingImageUiState, RevalidatingImageUiState>,
              RevalidatingImageUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
