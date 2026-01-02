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
      errorHandlingViewModelProvider.select((s) => s.todos),
    );
    final vm = ref.read(errorHandlingViewModelProvider.notifier);

    return Column(
      crossAxisAlignment: .stretch,
      children: [
        GestureDetector(
          onTap: vm.load,
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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exceptions = [
      const DomainException.cancelled(),
      const DomainException.unknown(),
      const DomainException.invalidArgument(),
      const DomainException.deadlineExceeded(),
      const DomainException.notFound(),
      const DomainException.alreadyExists(),
      const DomainException.permissionDenied(),
      const DomainException.resourceExhausted(),
      const DomainException.failedPrecondition(),
      const DomainException.aborted(),
      const DomainException.outOfRange(),
      const DomainException.unimplemented(),
      const DomainException.internal(),
      const DomainException.unavailable(),
      const DomainException.dataLoss(),
      const DomainException.unauthenticated(),
    ];

    void clearError() {
      ref.read(globalErrorWidgetProvider.notifier).widget = null;
    }

    void showError(DomainException exception) {
      final errorScreen = switch (exception) {
        Cancelled() => ErrorScreen.cancelled(onButtonTap: clearError),
        Unknown() => ErrorScreen.unknown(onButtonTap: clearError),
        InvalidArgument() => ErrorScreen.invalidArgument(
          onButtonTap: clearError,
        ),
        DeadlineExceeded() => ErrorScreen.deadlineExceeded(
          onButtonTap: clearError,
        ),
        NotFound() => ErrorScreen.notFound(onButtonTap: clearError),
        AlreadyExists() => ErrorScreen.alreadyExists(onButtonTap: clearError),
        PermissionDenied() => ErrorScreen.permissionDenied(
          onButtonTap: clearError,
        ),
        ResourceExhausted() => ErrorScreen.resourceExhausted(
          onButtonTap: clearError,
        ),
        FailedPrecondition() => ErrorScreen.failedPrecondition(
          onButtonTap: clearError,
        ),
        Aborted() => ErrorScreen.aborted(onButtonTap: clearError),
        OutOfRange() => ErrorScreen.outOfRange(onButtonTap: clearError),
        Unimplemented() => ErrorScreen.unimplemented(onButtonTap: clearError),
        Internal() => ErrorScreen.internal(onButtonTap: clearError),
        Unavailable() => ErrorScreen.unavailable(onButtonTap: clearError),
        DataLoss() => ErrorScreen.dataLoss(onButtonTap: clearError),
        Unauthenticated() => ErrorScreen.unauthenticated(
          onButtonTap: clearError,
        ),
      };
      ref.read(globalErrorWidgetProvider.notifier).widget = errorScreen;
    }

    return ListView(
      children: exceptions
          .map(
            (e) => GestureDetector(
              onTap: () => showError(e),
              child: Text('Show ${e.runtimeType}'),
            ),
          )
          .toList(),
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
