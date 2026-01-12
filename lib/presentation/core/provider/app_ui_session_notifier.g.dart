// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_ui_session_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Manages the UI session state that persists while the app is running.
///
/// Use this to track screen views and other transient UI state
/// that should reset when the user logs out.

@ProviderFor(AppUiSessionNotifier)
const appUiSessionProvider = AppUiSessionNotifierProvider._();

/// Manages the UI session state that persists while the app is running.
///
/// Use this to track screen views and other transient UI state
/// that should reset when the user logs out.
final class AppUiSessionNotifierProvider
    extends $NotifierProvider<AppUiSessionNotifier, AppUiSession> {
  /// Manages the UI session state that persists while the app is running.
  ///
  /// Use this to track screen views and other transient UI state
  /// that should reset when the user logs out.
  const AppUiSessionNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appUiSessionProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appUiSessionNotifierHash();

  @$internal
  @override
  AppUiSessionNotifier create() => AppUiSessionNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppUiSession value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppUiSession>(value),
    );
  }
}

String _$appUiSessionNotifierHash() =>
    r'7e186de4d7d6d0ad46c54a1f0604c02118984654';

/// Manages the UI session state that persists while the app is running.
///
/// Use this to track screen views and other transient UI state
/// that should reset when the user logs out.

abstract class _$AppUiSessionNotifier extends $Notifier<AppUiSession> {
  AppUiSession build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AppUiSession, AppUiSession>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AppUiSession, AppUiSession>,
              AppUiSession,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
