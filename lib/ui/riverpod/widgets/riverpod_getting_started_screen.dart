import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/domain/models/todo/todo.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:flutter_lab/ui/core/ui/elevated_button.dart';
import 'package:flutter_lab/ui/core/ui/text_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'riverpod_getting_started_screen.g.dart';

/// The different filters that can be applied to the todo list.
enum TodoListFilter { all, active, completed }

/// The number of uncompleted todos.
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

@riverpod
Todo _currentTodo(Ref ref) {
  throw UnimplementedError();
}

class RiverpodGettingStartedScreen extends HookConsumerWidget {
  const RiverpodGettingStartedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoFocusNode = useFocusNode();
    final todoController = useTextEditingController();
    final todos = ref.watch(filteredTodosProvider);

    final onSubmitted = useCallback<ValueChanged<String>>((title) {
      ref.read(todoListNotifierProvider.notifier).add(title);
      todoController.clear();
    }, [todoController]);

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
                onSubmitted: onSubmitted,
              ),
              // toolbar
              const _Toolbar(),
              for (final todo in todos)
                Dismissible(
                  key: ValueKey(todo.id),
                  onDismissed: (_) {
                    ref.read(todoListNotifierProvider.notifier).remove(todo);
                  },
                  child: ProviderScope(
                    overrides: [_currentTodoProvider.overrideWithValue(todo)],
                    child: const TodoItem(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class TodoItem extends HookConsumerWidget {
  const TodoItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todo = ref.watch(_currentTodoProvider);
    final itemFocusNode = useFocusNode();
    final itemIsFocused = useIsFocused(itemFocusNode);

    final textEditingController = useTextEditingController();
    final textFieldFocusNode = useFocusNode();

    return Focus(
      focusNode: itemFocusNode,
      onFocusChange: (focused) {
        if (focused) {
          textEditingController.text = todo.description;
        } else {
          ref
              .read(todoListNotifierProvider.notifier)
              .edit(id: todo.id, description: textEditingController.text);
        }
      },
      child: ElevatedButton(
        onPressed: () {
          itemFocusNode.requestFocus();
          textFieldFocusNode.requestFocus();
        },
        child: itemIsFocused
            ? EditableText(
                focusNode: textFieldFocusNode,
                controller: textEditingController,
                style: TextStyles.bodyMedium.copyWith(color: AppColors.black1),
                cursorColor: AppColors.gray1,
                backgroundCursorColor: AppColors.primary,
              )
            : Text(todo.description),
      ),
    );
  }
}

bool useIsFocused(FocusNode node) {
  final isFocused = useState(node.hasFocus);

  useEffect(
    () {
      void listener() {
        isFocused.value = node.hasFocus;
      }

      node.addListener(listener);
      return () => node.removeListener(listener);
    },
    [node],
  );

  return isFocused.value;
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

  /// Removes a todo from the list.
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
