import 'package:flutter/widgets.dart';
import 'package:flutter_lab/l10n/app_localizations.dart';
import 'package:flutter_lab/ui/home/home_view_model.dart';

class CompassScreen extends StatefulWidget {
  const CompassScreen({required this.viewModel, super.key});

  final HomeViewModel viewModel;

  @override
  State<CompassScreen> createState() => _CompassScreenState();
}

class _CompassScreenState extends State<CompassScreen> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.deleteBooking.addListener(_onResult);
  }

  @override
  void didUpdateWidget(covariant CompassScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    oldWidget.viewModel.deleteBooking.removeListener(_onResult);
    widget.viewModel.deleteBooking.addListener(_onResult);
  }

  @override
  void dispose() {
    widget.viewModel.deleteBooking.removeListener(_onResult);
    super.dispose();
  }

  void _onResult() {
    if (widget.viewModel.deleteBooking.completed) {
      widget.viewModel.deleteBooking.clearResult();
    }

    if (widget.viewModel.deleteBooking.error) {
      widget.viewModel.deleteBooking.clearResult();
    }
  }

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context);
    if (appLocalizations == null) {
      return const Center(child: Text('Localization not found'));
    }
    return Text('compass screen');
  }
}
