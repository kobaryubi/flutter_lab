// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logged_in_home_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the logged-in home screen.
///
/// Holds the pending target screen captured from a push-notification tap
/// so the view layer can react to it (typically by navigating).

@ProviderFor(LoggedInHomeViewModel)
const loggedInHomeViewModelProvider = LoggedInHomeViewModelProvider._();

/// ViewModel for the logged-in home screen.
///
/// Holds the pending target screen captured from a push-notification tap
/// so the view layer can react to it (typically by navigating).
final class LoggedInHomeViewModelProvider
    extends $NotifierProvider<LoggedInHomeViewModel, LoggedInHomeUiState> {
  /// ViewModel for the logged-in home screen.
  ///
  /// Holds the pending target screen captured from a push-notification tap
  /// so the view layer can react to it (typically by navigating).
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
    r'823c443e1d18c6d597a008fe01014a64de33867e';

/// ViewModel for the logged-in home screen.
///
/// Holds the pending target screen captured from a push-notification tap
/// so the view layer can react to it (typically by navigating).

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
