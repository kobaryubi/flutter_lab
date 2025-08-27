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
    RiverpodRandomJokeViewModelFamily._();

/// ViewModel for managing random jokes.
final class RiverpodRandomJokeViewModelProvider
    extends
        $AsyncNotifierProvider<
          RiverpodRandomJokeViewModel,
          RiverpodRandomJokeUiState
        > {
  /// ViewModel for managing random jokes.
  const RiverpodRandomJokeViewModelProvider._({
    required RiverpodRandomJokeViewModelFamily super.from,
    required (dynamic, WidgetRef) super.argument,
  }) : super(
         retry: null,
         name: r'riverpodRandomJokeViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$riverpodRandomJokeViewModelHash();

  @override
  String toString() {
    return r'riverpodRandomJokeViewModelProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  RiverpodRandomJokeViewModel create() => RiverpodRandomJokeViewModel();

  @override
  bool operator ==(Object other) {
    return other is RiverpodRandomJokeViewModelProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$riverpodRandomJokeViewModelHash() =>
    r'66764161bda999dbafc8ebd7cfb0594e5c815a2b';

/// ViewModel for managing random jokes.
final class RiverpodRandomJokeViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          RiverpodRandomJokeViewModel,
          AsyncValue<RiverpodRandomJokeUiState>,
          RiverpodRandomJokeUiState,
          FutureOr<RiverpodRandomJokeUiState>,
          (dynamic, WidgetRef)
        > {
  const RiverpodRandomJokeViewModelFamily._()
    : super(
        retry: null,
        name: r'riverpodRandomJokeViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// ViewModel for managing random jokes.
  RiverpodRandomJokeViewModelProvider call(dynamic _, WidgetRef ref) =>
      RiverpodRandomJokeViewModelProvider._(argument: (_, ref), from: this);

  @override
  String toString() => r'riverpodRandomJokeViewModelProvider';
}

abstract class _$RiverpodRandomJokeViewModel
    extends $AsyncNotifier<RiverpodRandomJokeUiState> {
  late final _$args = ref.$arg as (dynamic, WidgetRef);
  dynamic get _ => _$args.$1;
  WidgetRef get ref => _$args.$2;

  FutureOr<RiverpodRandomJokeUiState> build(dynamic _, WidgetRef ref);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, _$args.$2);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<RiverpodRandomJokeUiState>,
              RiverpodRandomJokeUiState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<RiverpodRandomJokeUiState>,
                RiverpodRandomJokeUiState
              >,
              AsyncValue<RiverpodRandomJokeUiState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
