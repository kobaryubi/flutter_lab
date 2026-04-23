import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/error_handling/ui_state/error_handling_screen_error.dart';
import 'package:flutter_lab/ui/error_handling/view_model/error_handling_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Sample screen that renders a different error widget per domain failure.
class ErrorHandlingScreen extends StatelessWidget {
  const ErrorHandlingScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Error Handling')),
    child: _Body(),
  );
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(errorHandlingViewModelProvider);
    final viewModel = ref.read(errorHandlingViewModelProvider.notifier);

    /// Triggers a successful fetch.
    void handleFetchSuccess() {
      viewModel.fetchSuccess();
    }

    /// Simulates a not-found failure.
    void handleFetchNotFound() {
      viewModel.fetchNotFound();
    }

    /// Simulates a permission-denied failure.
    void handleFetchPermissionDenied() {
      viewModel.fetchPermissionDenied();
    }

    /// Simulates a service-unavailable failure.
    void handleFetchUnavailable() {
      viewModel.fetchUnavailable();
    }

    /// Simulates an unknown failure that falls through to the generic bucket.
    void handleFetchUnknown() {
      viewModel.fetchUnknown();
    }

    return Column(
      crossAxisAlignment: .stretch,
      spacing: 8,
      children: [
        _TriggerButtons(
          onFetchSuccess: handleFetchSuccess,
          onFetchNotFound: handleFetchNotFound,
          onFetchPermissionDenied: handleFetchPermissionDenied,
          onFetchUnavailable: handleFetchUnavailable,
          onFetchUnknown: handleFetchUnknown,
        ),
        if (uiState.message == null) const Text('Tap a button to fetch.'),
        if (uiState.message case AsyncLoading()) const Text('Loading...'),
        if (uiState.message case AsyncData(:final value)) Text(value),
        if (uiState.message case AsyncError(:final error))
          _ErrorView(error: error),
      ],
    );
  }
}

class _TriggerButtons extends StatelessWidget {
  const _TriggerButtons({
    required this.onFetchSuccess,
    required this.onFetchNotFound,
    required this.onFetchPermissionDenied,
    required this.onFetchUnavailable,
    required this.onFetchUnknown,
  });

  final VoidCallback onFetchSuccess;
  final VoidCallback onFetchNotFound;
  final VoidCallback onFetchPermissionDenied;
  final VoidCallback onFetchUnavailable;
  final VoidCallback onFetchUnknown;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: .start,
    spacing: 4,
    children: [
      GestureDetector(
        onTap: onFetchSuccess,
        child: const Text('Fetch success'),
      ),
      GestureDetector(
        onTap: onFetchNotFound,
        child: const Text('Fetch not found'),
      ),
      GestureDetector(
        onTap: onFetchPermissionDenied,
        child: const Text('Fetch permission denied'),
      ),
      GestureDetector(
        onTap: onFetchUnavailable,
        child: const Text('Fetch unavailable'),
      ),
      GestureDetector(
        onTap: onFetchUnknown,
        child: const Text('Fetch unknown'),
      ),
    ],
  );
}

/// Renders a presentation-specific error widget for the given [error].
///
/// The view only pattern-matches on [ErrorHandlingScreenError] variants;
/// domain exceptions have already been translated by the ViewModel.
class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.error});

  final Object error;

  @override
  Widget build(BuildContext context) {
    if (error is! ErrorHandlingScreenError) {
      return Text('Unexpected error: $error');
    }

    return switch (error as ErrorHandlingScreenError) {
      NotFoundError() => const _NotFoundErrorView(),
      PermissionDeniedError() => const _PermissionDeniedErrorView(),
      UnavailableError() => const _UnavailableErrorView(),
      GenericError() => const _GenericErrorView(),
    };
  }
}

class _NotFoundErrorView extends StatelessWidget {
  const _NotFoundErrorView();

  @override
  Widget build(BuildContext context) =>
      const Text('The thing you were looking for does not exist.');
}

class _PermissionDeniedErrorView extends StatelessWidget {
  const _PermissionDeniedErrorView();

  @override
  Widget build(BuildContext context) =>
      const Text('You do not have permission to do that.');
}

class _UnavailableErrorView extends StatelessWidget {
  const _UnavailableErrorView();

  @override
  Widget build(BuildContext context) =>
      const Text('The service is unavailable. Try again shortly.');
}

class _GenericErrorView extends StatelessWidget {
  const _GenericErrorView();

  @override
  Widget build(BuildContext context) => const Text('Something went wrong.');
}
