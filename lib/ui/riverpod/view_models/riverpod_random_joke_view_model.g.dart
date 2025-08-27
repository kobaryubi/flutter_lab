// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod_random_joke_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

/// Riverpod provider for fetching a random joke.
@ProviderFor(randomJoke)
const randomJokeProvider = RandomJokeProvider._();

/// Riverpod provider for fetching a random joke.
final class RandomJokeProvider
    extends $FunctionalProvider<AsyncValue<Joke>, Joke, FutureOr<Joke>>
    with $FutureModifier<Joke>, $FutureProvider<Joke> {
  /// Riverpod provider for fetching a random joke.
  const RandomJokeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'randomJokeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$randomJokeHash();

  @$internal
  @override
  $FutureProviderElement<Joke> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Joke> create(Ref ref) {
    return randomJoke(ref);
  }
}

String _$randomJokeHash() => r'7ca5b1caafcf95d375c495170156f219a3bf7dc6';

/// ViewModel for managing random jokes.
@ProviderFor(RiverpodRandomJokeViewModel)
const riverpodRandomJokeViewModelProvider =
    RiverpodRandomJokeViewModelProvider._();

/// ViewModel for managing random jokes.
final class RiverpodRandomJokeViewModelProvider
    extends
        $NotifierProvider<
          RiverpodRandomJokeViewModel,
          RiverpodRandomJokeUiState
        > {
  /// ViewModel for managing random jokes.
  const RiverpodRandomJokeViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'riverpodRandomJokeViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$riverpodRandomJokeViewModelHash();

  @$internal
  @override
  RiverpodRandomJokeViewModel create() => RiverpodRandomJokeViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RiverpodRandomJokeUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RiverpodRandomJokeUiState>(value),
    );
  }
}

String _$riverpodRandomJokeViewModelHash() =>
    r'1c85225ee6200bcef249943cd11a3691d059b13c';

abstract class _$RiverpodRandomJokeViewModel
    extends $Notifier<RiverpodRandomJokeUiState> {
  RiverpodRandomJokeUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<RiverpodRandomJokeUiState, RiverpodRandomJokeUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RiverpodRandomJokeUiState, RiverpodRandomJokeUiState>,
              RiverpodRandomJokeUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
