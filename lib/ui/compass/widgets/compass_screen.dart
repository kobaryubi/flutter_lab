import 'package:flutter/widgets.dart';
import 'package:flutter_lab/domain/models/booking/booking_summary.dart';
import 'package:flutter_lab/gen/assets.gen.dart';
import 'package:flutter_lab/ui/compass/view_models/compass_view_model.dart';
import 'package:flutter_lab/ui/compass/widgets/compass_header.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/scaffold.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBar(title: Text('Compass')),
      body: ListenableBuilder(
        listenable: widget.viewModel.load,
        builder: (context, child) {
          if (child == null || widget.viewModel.load.running) {
            return const Text('Loading...');
          }

          if (widget.viewModel.load.error) {
            return const Text('Error');
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
                SliverList.builder(
                  itemCount: widget.viewModel.bookings.length,
                  itemBuilder: (_, index) => _Booking(
                    key: ValueKey(widget.viewModel.bookings[index].id),
                    booking: widget.viewModel.bookings[index],
                    onTap: () {},
                    confirmDismiss: (_) async {
                      await widget.viewModel.deleteBooking.execute(
                        widget.viewModel.bookings[index].id,
                      );

                      return widget.viewModel.deleteBooking.completed;
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _Booking extends StatelessWidget {
  const _Booking({
    required this.booking,
    required this.onTap,
    required this.confirmDismiss,
    super.key,
  });

  final BookingSummary booking;
  final GestureTapCallback onTap;
  final ConfirmDismissCallback confirmDismiss;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(booking.id),
      confirmDismiss: confirmDismiss,
      direction: DismissDirection.endToStart,
      background: ColoredBox(
        color: AppColors.gray1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(Dimens.padding),
              child: Assets.icons.delete.svg(
                width: Dimens.iconWidth,
                height: Dimens.iconHeight,
              ),
            ),
          ],
        ),
      ),
      child: Semantics(
        button: true,
        child: GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(Dimens.padding),
            child: Text(booking.name, style: TextStyles.titleMedium),
          ),
        ),
      ),
    );
  }
}
