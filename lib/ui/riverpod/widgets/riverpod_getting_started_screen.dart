import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/domain/models/todo/todo.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:flutter_lab/ui/core/ui/text_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'riverpod_getting_started_screen.g.dart';

enum TodoListFilter { all, active, completed }

final uncompletedTodosCount = Provider<int>((ref) {
  return ref
      .watch(todoListNotifierProvider)
      .where((todo) => !todo.completed)
      .length;
});

@riverpod
class TodoListFilterNotifier extends _$TodoListFilterNotifier {
  @override
  TodoListFilter build() => TodoListFilter.all;

  @override
  set state(TodoListFilter newState) => super.state = newState;
}

@riverpod
List<Todo> filteredTodos(Ref ref) {
  final filter = ref.watch(todoListFilterNotifierProvider);
  final todos = ref.watch(todoListNotifierProvider);

  switch (filter) {
    case TodoListFilter.completed:
      return todos.where((todo) => todo.completed).toList();
    case TodoListFilter.active:
      return todos.where((todo) => !todo.completed).toList();
    case TodoListFilter.all:
      return todos;
  }
}

class RiverpodGettingStartedScreen extends HookConsumerWidget {
  const RiverpodGettingStartedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoFocusNode = useFocusNode();
    final todoController = useTextEditingController();

    return ColoredBox(
      color: AppColors.white1,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: ListView(
            padding: Dimens.edgeInsetsScreenSymmetric,
            children: [
              // title
              Text(
                'todos',
                textAlign: TextAlign.center,
                style: TextStyles.headlineLarge,
              ),
              // text field
              EditableText(
                controller: todoController,
                focusNode: todoFocusNode,
                style: TextStyles.bodyMedium.copyWith(color: AppColors.black1),
                cursorColor: AppColors.gray1,
                backgroundCursorColor: AppColors.primary,
              ),
              // toolbar
              const _Toolbar(),
            ],
          ),
        ),
      ),
    );
  }
}

const _uuid = Uuid();

@riverpod
class TodoListNotifier extends _$TodoListNotifier {
  @override
  List<Todo> build() => [
    const Todo(id: 'todo-0', description: 'Buy cookies'),
    const Todo(id: 'todo-1', description: 'Star Riverpod'),
    const Todo(id: 'todo-2', description: 'Have a walk'),
  ];

  void add(String description) {
    state = [...state, Todo(id: _uuid.v4(), description: description)];
  }

  void toggle(String id) {
    state = [
      for (final todo in state)
        if (todo.id == id) todo.copyWith(completed: !todo.completed) else todo,
    ];
  }

  void edit({required String id, required String description}) {
    state = [
      for (final todo in state)
        if (todo.id == id)
          Todo(id: todo.id, completed: todo.completed, description: description)
        else
          todo,
    ];
  }

  void remove(Todo target) {
    state = state.where((todo) => todo.id != target.id).toList();
  }
}

class _Toolbar extends HookConsumerWidget {
  const _Toolbar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${ref.watch(uncompletedTodosCount)} items left',
          overflow: TextOverflow.ellipsis,
        ),
        TextButton(
          onPressed: () =>
              ref.read(todoListFilterNotifierProvider.notifier).state =
                  TodoListFilter.all,
          child: const Text('All'),
        ),
        TextButton(
          onPressed: () =>
              ref.read(todoListFilterNotifierProvider.notifier).state =
                  TodoListFilter.active,
          child: const Text('Active'),
        ),
        TextButton(
          onPressed: () =>
              ref.read(todoListFilterNotifierProvider.notifier).state =
                  TodoListFilter.completed,
          child: const Text('Completed'),
        ),
      ],
    );
  }
}
