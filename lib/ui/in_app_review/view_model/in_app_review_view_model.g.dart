// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_app_review_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that manages in-app review operations.

@ProviderFor(InAppReviewViewModel)
const inAppReviewViewModelProvider = InAppReviewViewModelProvider._();

/// ViewModel that manages in-app review operations.
final class InAppReviewViewModelProvider
    extends $NotifierProvider<InAppReviewViewModel, void> {
  /// ViewModel that manages in-app review operations.
  const InAppReviewViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'inAppReviewViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$inAppReviewViewModelHash();

  @$internal
  @override
  InAppReviewViewModel create() => InAppReviewViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$inAppReviewViewModelHash() =>
    r'128c2ede9ac40077d9ba0665d255efa6c44ad255';

/// ViewModel that manages in-app review operations.

abstract class _$InAppReviewViewModel extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}
