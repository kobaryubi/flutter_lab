import 'package:flutter/widgets.dart';
import 'package:flutter_lab/domain/models/exception/domain_exception.dart';
import 'package:flutter_lab/domain/models/todo/todo.dart';
import 'package:flutter_lab/presentation/core/provider/global_error_widget_notifier.dart';
import 'package:flutter_lab/presentation/core/widget/error_screen.dart';
import 'package:flutter_lab/presentation/error_handling/provider/error_handling_view_model.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
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
      errorHandlingViewModelProvider.select((state) => state.todos),
    );
    final viewModel = ref.read(errorHandlingViewModelProvider.notifier);

    void handleLoadTodos() {
      viewModel.load();
    }

    return Column(
      crossAxisAlignment: .stretch,
      children: [
        GestureDetector(
          onTap: handleLoadTodos,
          child: const Text('Load Todos'),
        ),
        const Expanded(child: _ExceptionButtons()),
        Expanded(child: _TodoList(todos: todos)),
      ],
    );
  }
}

class _ExceptionButtons extends ConsumerWidget {
  const _ExceptionButtons();

  static const _exceptions = [
    DomainException.cancelled(),
    DomainException.unknown(),
    DomainException.invalidArgument(),
    DomainException.deadlineExceeded(),
    DomainException.notFound(),
    DomainException.alreadyExists(),
    DomainException.permissionDenied(),
    DomainException.resourceExhausted(),
    DomainException.failedPrecondition(),
    DomainException.aborted(),
    DomainException.outOfRange(),
    DomainException.unimplemented(),
    DomainException.internal(),
    DomainException.unavailable(),
    DomainException.dataLoss(),
    DomainException.unauthenticated(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        for (final exception in _exceptions)
          _ExceptionButton(exception: exception),
      ],
    );
  }
}

class _ExceptionButton extends ConsumerWidget {
  const _ExceptionButton({required this.exception});

  final DomainException exception;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void handleClearError() {
      ref.read(globalErrorWidgetProvider.notifier).widget = null;
    }

    void handleTap() {
      final errorScreen = switch (exception) {
        Cancelled() => ErrorScreen.cancelled(onButtonTap: handleClearError),
        Unknown() => ErrorScreen.unknown(onButtonTap: handleClearError),
        InvalidArgument() => ErrorScreen.invalidArgument(
          onButtonTap: handleClearError,
        ),
        DeadlineExceeded() => ErrorScreen.deadlineExceeded(
          onButtonTap: handleClearError,
        ),
        NotFound() => ErrorScreen.notFound(onButtonTap: handleClearError),
        AlreadyExists() => ErrorScreen.alreadyExists(
          onButtonTap: handleClearError,
        ),
        PermissionDenied() => ErrorScreen.permissionDenied(
          onButtonTap: handleClearError,
        ),
        ResourceExhausted() => ErrorScreen.resourceExhausted(
          onButtonTap: handleClearError,
        ),
        FailedPrecondition() => ErrorScreen.failedPrecondition(
          onButtonTap: handleClearError,
        ),
        Aborted() => ErrorScreen.aborted(onButtonTap: handleClearError),
        OutOfRange() => ErrorScreen.outOfRange(onButtonTap: handleClearError),
        Unimplemented() => ErrorScreen.unimplemented(
          onButtonTap: handleClearError,
        ),
        Internal() => ErrorScreen.internal(onButtonTap: handleClearError),
        Unavailable() => ErrorScreen.unavailable(onButtonTap: handleClearError),
        DataLoss() => ErrorScreen.dataLoss(onButtonTap: handleClearError),
        Unauthenticated() => ErrorScreen.unauthenticated(
          onButtonTap: handleClearError,
        ),
      };
      ref.read(globalErrorWidgetProvider.notifier).widget = errorScreen;
    }

    return GestureDetector(
      onTap: handleTap,
      child: Text('Show ${exception.runtimeType}'),
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
