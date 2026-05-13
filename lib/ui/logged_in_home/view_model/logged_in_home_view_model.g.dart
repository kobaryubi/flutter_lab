// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logged_in_home_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the logged-in home screen.
///
/// Consumes any pending target screen on initialization and exposes it
/// via the UI state so the view layer can decide whether to navigate.

@ProviderFor(LoggedInHomeViewModel)
const loggedInHomeViewModelProvider = LoggedInHomeViewModelProvider._();

/// ViewModel for the logged-in home screen.
///
/// Consumes any pending target screen on initialization and exposes it
/// via the UI state so the view layer can decide whether to navigate.
final class LoggedInHomeViewModelProvider
    extends $NotifierProvider<LoggedInHomeViewModel, LoggedInHomeUiState> {
  /// ViewModel for the logged-in home screen.
  ///
  /// Consumes any pending target screen on initialization and exposes it
  /// via the UI state so the view layer can decide whether to navigate.
  const LoggedInHomeViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loggedInHomeViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loggedInHomeViewModelHash();

  @$internal
  @override
  LoggedInHomeViewModel create() => LoggedInHomeViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoggedInHomeUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoggedInHomeUiState>(value),
    );
  }
}

String _$loggedInHomeViewModelHash() =>
    r'd73ad4f8f5bc343f19f1a0f437b702aacb511103';

/// ViewModel for the logged-in home screen.
///
/// Consumes any pending target screen on initialization and exposes it
/// via the UI state so the view layer can decide whether to navigate.

abstract class _$LoggedInHomeViewModel extends $Notifier<LoggedInHomeUiState> {
  LoggedInHomeUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LoggedInHomeUiState, LoggedInHomeUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LoggedInHomeUiState, LoggedInHomeUiState>,
              LoggedInHomeUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
