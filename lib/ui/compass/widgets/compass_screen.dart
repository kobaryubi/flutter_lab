import 'package:flutter/widgets.dart';
import 'package:flutter_lab/l10n/app_localizations.dart';
import 'package:flutter_lab/ui/home/home_view_model.dart';

class CompassScreen extends StatefulWidget {
  const CompassScreen({required HomeViewModel viewModel, super.key})
    : _viewModel = viewModel;

  final HomeViewModel _viewModel;

  @override
  State<CompassScreen> createState() => _CompassScreenState();
}

class _CompassScreenState extends State<CompassScreen> {
  @override
  void initState() {
    super.initState();
    widget._viewModel.deleteBooking.addListener(_onResult);
  }

  @override
  void didUpdateWidget(covariant CompassScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    oldWidget._viewModel.deleteBooking.removeListener(_onResult);
    widget._viewModel.deleteBooking.addListener(_onResult);
  }

  @override
  void dispose() {
    widget._viewModel.deleteBooking.removeListener(_onResult);
    super.dispose();
  }

  void _onResult() {
    if (widget._viewModel.deleteBooking.completed) {
      widget._viewModel.deleteBooking.clearResult();
    }

    if (widget._viewModel.deleteBooking.error) {
      widget._viewModel.deleteBooking.clearResult();
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
