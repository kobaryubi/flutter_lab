import 'package:flutter/widgets.dart';
import 'package:flutter_lab/domain/models/booking/booking_summary.dart';
import 'package:flutter_lab/gen/assets.gen.dart';
import 'package:flutter_lab/l10n/app_localizations.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:flutter_lab/ui/core/ui/compass_app_bar.dart';
import 'package:flutter_lab/ui/core/ui/fab.dart';
import 'package:flutter_lab/ui/core/ui/error_indicator.dart';
import 'package:flutter_lab/ui/home/home_view_model.dart';
import 'package:flutter_lab/ui/home/widgets/home_title.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.deleteBooking.addListener(_onResult);
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    oldWidget.viewModel.deleteBooking.removeListener(_onResult);
    widget.viewModel.deleteBooking.addListener(_onResult);
  }

  @override
  void dispose() {
    widget.viewModel.deleteBooking.removeListener(_onResult);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context);
    if (appLocalizations == null) {
      return const Center(child: Text('Localization not found'));
    }

    return Container(
      decoration: const BoxDecoration(color: AppColors.white1),
      child: Stack(
        children: [
          Column(
            children: [
              CompassAppBar(),
              SafeArea(
                top: false,
                bottom: false,
                child: ListenableBuilder(
                  listenable: widget.viewModel.load,
                  builder: (context, child) {
                    if (child == null) {
                      return const Center(child: Text('Loading...'));
                    }

                    if (widget.viewModel.load.running) {
                      return const Center(child: Text('Loading...'));
                    }

                    if (widget.viewModel.load.error) {
                      return ErrorIndicator(
                        title: appLocalizations.errorWhileLoadingHome,
                        label: appLocalizations.tryAgain,
                        onPressed: widget.viewModel.load.execute,
                      );
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
                              padding: EdgeInsets.symmetric(
                                vertical: Dimens.paddingScreenVertical,
                                horizontal: Dimens.paddingScreenHorizontal,
                              ),
                              child: HomeHeader(viewModel: widget.viewModel),
                            ),
                          ),
                          SliverList.builder(
                            itemCount: widget.viewModel.bookings.length,
                            itemBuilder: (_, index) => _Booking(
                              key: ValueKey(
                                widget.viewModel.bookings[index].id,
                              ),
                              booking: widget.viewModel.bookings[index],
                              onTap: () => context.push(
                                Routes.bookingWithId(
                                  widget.viewModel.bookings[index].id,
                                ),
                              ),
                              confirmDismiss: (_) async {
                                await widget.viewModel.deleteBooking.execute(
                                  widget.viewModel.bookings[index].id,
                                );
                                if (widget.viewModel.deleteBooking.completed) {
                                  return true;
                                } else {
                                  return false;
                                }
                              },
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
                child: Fab(
                  label: appLocalizations.bookNewTrip,
                  onPressed: () => context.push(Routes.search),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onResult() {
    if (widget.viewModel.deleteBooking.completed) {
      widget.viewModel.deleteBooking.clearResult();
    }

    if (widget.viewModel.deleteBooking.error) {
      widget.viewModel.deleteBooking.clearResult();
    }
  }
}

class _Booking extends StatelessWidget {
  const _Booking({
    super.key,
    required this.booking,
    required this.onTap,
    required this.confirmDismiss,
  });

  final BookingSummary booking;
  final GestureTapCallback onTap;
  final ConfirmDismissCallback confirmDismiss;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(booking.id),
      direction: DismissDirection.endToStart,
      confirmDismiss: confirmDismiss,
      background: Container(
        color: AppColors.gray1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: Dimens.paddingHorizontal),
              child: Assets.icons.delete.svg(),
            ),
          ],
        ),
      ),
      child: Semantics(
        button: true,
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.paddingScreenHorizontal,
            vertical: Dimens.paddingVertical,
          ),
          child: Text(booking.name, style: TextStyles.titleMedium),
        ),
      ),
    );
  }
}
