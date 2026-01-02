import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/activities/activities_view_model.dart';
import 'package:go_router/go_router.dart';

class ActivitiesScreen extends StatefulWidget {
  const ActivitiesScreen({required this.viewModel, super.key});

  final ActivitiesViewModel viewModel;

  @override
  State<ActivitiesScreen> createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.saveActivities.addListener(_onResult);
  }

  @override
  void didUpdateWidget(covariant ActivitiesScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    oldWidget.viewModel.saveActivities.removeListener(_onResult);
    widget.viewModel.saveActivities.addListener(_onResult);
  }

  @override
  void dispose() {
    widget.viewModel.saveActivities.removeListener(_onResult);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, r) {
        if (!didPop) context.go(Routes.results);
      },
      child: Container(
        child: ListenableBuilder(
          listenable: widget.viewModel.loadActivities,
          builder: (BuildContext context, Widget? child) {
            if (child == null) {
              return const SizedBox.shrink();
            }

            if (widget.viewModel.loadActivities.completed) {
              return child;
            }

            return const Column();
          },
          child: ListenableBuilder(
            listenable: widget.viewModel,
            builder: (BuildContext context, Widget? child) {
              return const Column();
            },
          ),
        ),
      ),
    );
  }

  void _onResult() {
    if (widget.viewModel.saveActivities.completed) {
      widget.viewModel.saveActivities.clearResult();
    }

    if (widget.viewModel.saveActivities.error) {
      widget.viewModel.saveActivities.clearResult();
    }
  }
}
