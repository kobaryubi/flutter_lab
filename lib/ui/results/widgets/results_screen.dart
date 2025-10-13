import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/results/results_view_model.dart';
import 'package:go_router/go_router.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({required this.viewModel, super.key});

  final ResultsViewModel viewModel;

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.updateItineraryConfig.addListener(_onResult);
  }

  @override
  void didUpdateWidget(covariant ResultsScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    oldWidget.viewModel.updateItineraryConfig.removeListener(_onResult);
    widget.viewModel.updateItineraryConfig.addListener(_onResult);
  }

  @override
  void dispose() {
    widget.viewModel.updateItineraryConfig.removeListener(_onResult);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void _onResult() {
    if (widget.viewModel.updateItineraryConfig.completed) {
      widget.viewModel.updateItineraryConfig.clearResult();
      context.go(Routes.activities);
    }

    if (widget.viewModel.updateItineraryConfig.error) {
      widget.viewModel.updateItineraryConfig.clearResult();
    }
  }
}
