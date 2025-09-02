import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/compass/view_models/compass_search_form_view_model.dart';
import 'package:go_router/go_router.dart';

class CompassSearchFormScreen extends StatelessWidget {
  const CompassSearchFormScreen({required this.viewModel, super.key});

  final CompassSearchFormViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, r) {
        if (!didPop) context.go(Routes.home);
      },
      child: const Text('Search Form'),
    );
  }
}
