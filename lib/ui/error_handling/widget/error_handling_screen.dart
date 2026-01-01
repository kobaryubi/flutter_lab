import 'package:flutter/widgets.dart';
import 'package:flutter_lab/domain/models/todo/todo.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/error_handling/view_model/error_handling_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ErrorHandlingScreen extends StatelessWidget {
  const ErrorHandlingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      appBar: AppBar(title: Text('Error Handling')),
      child: _Body(),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(
      errorHandlingViewModelProvider.select((s) => s.todos),
    );

    return Column(
      crossAxisAlignment: .stretch,
      children: [
        GestureDetector(
          onTap: () => ref.read(errorHandlingViewModelProvider.notifier).load(),
          child: const Text('Load Todos'),
        ),
        Expanded(child: _TodoList(todos: todos)),
      ],
    );
  }
}

class _TodoList extends StatelessWidget {
  const _TodoList({required this.todos});

  final AsyncValue<List<Todo>>? todos;

  @override
  Widget build(BuildContext context) {
    if (todos == null) {
      return const Text('Tap to load todos');
    }

    return todos!.when(
      loading: () => const Text('Loading...'),
      error: (error, _) => Text('Error: $error'),
      data: (items) => ListView(
        children: items
            .map(
              (todo) =>
                  Text('${todo.completed ? "✓" : "○"} ${todo.description}'),
            )
            .toList(),
      ),
    );
  }
}
