// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod_getting_started_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Notifier for the todo list filter.

@ProviderFor(TodoListFilterNotifier)
const todoListFilterProvider = TodoListFilterNotifierProvider._();

/// Notifier for the todo list filter.
final class TodoListFilterNotifierProvider
    extends $NotifierProvider<TodoListFilterNotifier, TodoListFilter> {
  /// Notifier for the todo list filter.
  const TodoListFilterNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'todoListFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$todoListFilterNotifierHash();

  @$internal
  @override
  TodoListFilterNotifier create() => TodoListFilterNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TodoListFilter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TodoListFilter>(value),
    );
  }
}

String _$todoListFilterNotifierHash() =>
    r'd462b4cdb3ca1abf01a1b18376c4664b3a69c3b1';

/// Notifier for the todo list filter.

abstract class _$TodoListFilterNotifier extends $Notifier<TodoListFilter> {
  TodoListFilter build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<TodoListFilter, TodoListFilter>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TodoListFilter, TodoListFilter>,
              TodoListFilter,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

/// ViewModel for the Riverpod Getting Started screen.

@ProviderFor(RiverpodGettingStartedViewModel)
const riverpodGettingStartedViewModelProvider =
    RiverpodGettingStartedViewModelProvider._();

/// ViewModel for the Riverpod Getting Started screen.
final class RiverpodGettingStartedViewModelProvider
    extends
        $NotifierProvider<
          RiverpodGettingStartedViewModel,
          RiverpodGettingStartedUiState
        > {
  /// ViewModel for the Riverpod Getting Started screen.
  const RiverpodGettingStartedViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'riverpodGettingStartedViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$riverpodGettingStartedViewModelHash();

  @$internal
  @override
  RiverpodGettingStartedViewModel create() => RiverpodGettingStartedViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RiverpodGettingStartedUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RiverpodGettingStartedUiState>(
        value,
      ),
    );
  }
}

String _$riverpodGettingStartedViewModelHash() =>
    r'9449f40c34c2717d2ff76f3ee9a29f48d3a4aac7';

/// ViewModel for the Riverpod Getting Started screen.

abstract class _$RiverpodGettingStartedViewModel
    extends $Notifier<RiverpodGettingStartedUiState> {
  RiverpodGettingStartedUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              RiverpodGettingStartedUiState,
              RiverpodGettingStartedUiState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                RiverpodGettingStartedUiState,
                RiverpodGettingStartedUiState
              >,
              RiverpodGettingStartedUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
