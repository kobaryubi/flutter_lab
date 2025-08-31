import 'package:flutter/widgets.dart';
import 'package:flutter_lab/gen/assets.gen.dart';
import 'package:flutter_lab/l10n/app_localizations.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/compass/view_models/compass_view_model.dart';
import 'package:flutter_lab/ui/compass/widgets/compass_header.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';
import 'package:flutter_lab/ui/core/ui/floating_action_button.dart';
import 'package:flutter_lab/ui/core/ui/scaffold.dart';
import 'package:go_router/go_router.dart';

class CompassScreen extends StatefulWidget {
  const CompassScreen({required this.viewModel, super.key});

  final CompassViewModel viewModel;

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

  void _onPressed(BuildContext context) {
    context.go(Routes.search);
  }

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context);
    if (appLocalizations == null) {
      return const Center(child: Text('Localization not found'));
    }

    return Scaffold(
      body: ListenableBuilder(
        listenable: widget.viewModel.load,
        builder: (context, child) {
          if (child == null) {
            return const Text('Loading...');
          }

          return child;
        },
        child: ListenableBuilder(
          listenable: widget.viewModel,
          builder: (context, _) {
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: Dimens.paddingScreenVertical,
                      horizontal: Dimens.paddingScreenHorizontal,
                    ),
                    child: CompassHeader(viewModel: widget.viewModel),
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _onPressed(context),
        label: Text(appLocalizations.bookNewTrip),
        icon: Assets.icons.search,
      ),
    );
  }
}
