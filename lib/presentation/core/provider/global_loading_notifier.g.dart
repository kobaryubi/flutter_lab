// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_loading_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Notifier that controls the visibility of the global loading overlay.

@ProviderFor(GlobalLoadingNotifier)
const globalLoadingProvider = GlobalLoadingNotifierProvider._();

/// Notifier that controls the visibility of the global loading overlay.
final class GlobalLoadingNotifierProvider
    extends $NotifierProvider<GlobalLoadingNotifier, bool> {
  /// Notifier that controls the visibility of the global loading overlay.
  const GlobalLoadingNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'globalLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$globalLoadingNotifierHash();

  @$internal
  @override
  GlobalLoadingNotifier create() => GlobalLoadingNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$globalLoadingNotifierHash() =>
    r'37c6bd5a43fa6e146ff7d543402ea18084d4cbf0';

/// Notifier that controls the visibility of the global loading overlay.

abstract class _$GlobalLoadingNotifier extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
