// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_navigation_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that fetches the URL navigation list.

@ProviderFor(UrlNavigationViewModel)
const urlNavigationViewModelProvider = UrlNavigationViewModelProvider._();

/// ViewModel that fetches the URL navigation list.
final class UrlNavigationViewModelProvider
    extends
        $NotifierProvider<
          UrlNavigationViewModel,
          AsyncValue<UrlNavigationList>
        > {
  /// ViewModel that fetches the URL navigation list.
  const UrlNavigationViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'urlNavigationViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$urlNavigationViewModelHash();

  @$internal
  @override
  UrlNavigationViewModel create() => UrlNavigationViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<UrlNavigationList> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<UrlNavigationList>>(
        value,
      ),
    );
  }
}

String _$urlNavigationViewModelHash() =>
    r'91aad19202f7c048f4b1794f5b158c117dd5640e';

/// ViewModel that fetches the URL navigation list.

abstract class _$UrlNavigationViewModel
    extends $Notifier<AsyncValue<UrlNavigationList>> {
  AsyncValue<UrlNavigationList> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<UrlNavigationList>,
              AsyncValue<UrlNavigationList>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<UrlNavigationList>,
                AsyncValue<UrlNavigationList>
              >,
              AsyncValue<UrlNavigationList>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
