// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_error_widget_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GlobalErrorWidgetNotifier)
const globalErrorWidgetProvider = GlobalErrorWidgetNotifierProvider._();

final class GlobalErrorWidgetNotifierProvider
    extends $NotifierProvider<GlobalErrorWidgetNotifier, Widget?> {
  const GlobalErrorWidgetNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'globalErrorWidgetProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$globalErrorWidgetNotifierHash();

  @$internal
  @override
  GlobalErrorWidgetNotifier create() => GlobalErrorWidgetNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Widget? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Widget?>(value),
    );
  }
}

String _$globalErrorWidgetNotifierHash() =>
    r'c8d355d98042de56aaabdb5d3ed1504dfaa7b112';

abstract class _$GlobalErrorWidgetNotifier extends $Notifier<Widget?> {
  Widget? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Widget?, Widget?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Widget?, Widget?>,
              Widget?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
