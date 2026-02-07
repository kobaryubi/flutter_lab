import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/in_app_review/view_model/in_app_review_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen to test in-app review operations.
class InAppReviewScreen extends StatelessWidget {
  const InAppReviewScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('In-App Review')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(inAppReviewViewModelProvider.notifier);

    /// Checks whether the in-app review is available on this device.
    void handleCheckAvailability() {
      viewModel.checkAvailability();
    }

    /// Requests the native in-app review dialog.
    void handleRequestReview() {
      viewModel.requestReview();
    }

    return Column(
      crossAxisAlignment: .stretch,
      children: [
        GestureDetector(
          onTap: handleCheckAvailability,
          child: const Text('Check Availability'),
        ),
        GestureDetector(
          onTap: handleRequestReview,
          child: const Text('Request Review'),
        ),
      ],
    );
  }
}
