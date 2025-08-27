// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod_getting_started_screen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(_currentTodo)
const _currentTodoProvider = _CurrentTodoProvider._();

final class _CurrentTodoProvider extends $FunctionalProvider<Todo, Todo, Todo>
    with $Provider<Todo> {
  const _CurrentTodoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'_currentTodoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$_currentTodoHash();

  @$internal
  @override
  $ProviderElement<Todo> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Todo create(Ref ref) {
    return _currentTodo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Todo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Todo>(value),
    );
  }
}

String _$_currentTodoHash() => r'0b35a95688e9c46d1a49887c2ab799387aba68ee';

@ProviderFor(TodoListNotifier)
const todoListNotifierProvider = TodoListNotifierProvider._();

final class TodoListNotifierProvider
    extends $NotifierProvider<TodoListNotifier, List<Todo>> {
  const TodoListNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'todoListNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$todoListNotifierHash();

  @$internal
  @override
  TodoListNotifier create() => TodoListNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Todo> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Todo>>(value),
    );
  }
}

String _$todoListNotifierHash() => r'67d424c9e39fa5636833a7722ea3eeacd8f891ef';

abstract class _$TodoListNotifier extends $Notifier<List<Todo>> {
  List<Todo> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Todo>, List<Todo>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Todo>, List<Todo>>,
              List<Todo>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
