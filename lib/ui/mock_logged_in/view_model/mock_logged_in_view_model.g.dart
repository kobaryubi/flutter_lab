// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_logged_in_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the mock logged-in screen.
///
/// Consumes any pending target screen on initialization and exposes it
/// via the UI state so the view layer can decide whether to navigate.

@ProviderFor(MockLoggedInViewModel)
const mockLoggedInViewModelProvider = MockLoggedInViewModelProvider._();

/// ViewModel for the mock logged-in screen.
///
/// Consumes any pending target screen on initialization and exposes it
/// via the UI state so the view layer can decide whether to navigate.
final class MockLoggedInViewModelProvider
    extends $NotifierProvider<MockLoggedInViewModel, MockLoggedInUiState> {
  /// ViewModel for the mock logged-in screen.
  ///
  /// Consumes any pending target screen on initialization and exposes it
  /// via the UI state so the view layer can decide whether to navigate.
  const MockLoggedInViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mockLoggedInViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mockLoggedInViewModelHash();

  @$internal
  @override
  MockLoggedInViewModel create() => MockLoggedInViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MockLoggedInUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MockLoggedInUiState>(value),
    );
  }
}

String _$mockLoggedInViewModelHash() =>
    r'c3098f650c2b7b1a19be73f319f8a24a46c4b85b';

/// ViewModel for the mock logged-in screen.
///
/// Consumes any pending target screen on initialization and exposes it
/// via the UI state so the view layer can decide whether to navigate.

abstract class _$MockLoggedInViewModel extends $Notifier<MockLoggedInUiState> {
  MockLoggedInUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MockLoggedInUiState, MockLoggedInUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MockLoggedInUiState, MockLoggedInUiState>,
              MockLoggedInUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
