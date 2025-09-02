import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lab/domain/models/booking/booking.dart';
import 'package:flutter_lab/ui/compass/widgets/compass_home_button.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:flutter_lab/ui/core/ui/tag_chip.dart';
import 'package:flutter_lab/utils/image_error_listener.dart';

class CompassBookingHeader extends StatelessWidget {
  const CompassBookingHeader({required this.booking, super.key});

  final Booking booking;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _Top(booking: booking),
        Padding(
          padding: Dimens.edgeInsetsScreenHorizontal,
          child: Text(
            booking.destination.knownFor,
            style: TextStyles.bodyLarge.copyWith(color: AppColors.black1),
          ),
        ),
        const SizedBox(height: Dimens.paddingVertical),
        _Tags(booking: booking),
        const SizedBox(height: Dimens.paddingVertical),
      ],
    );
  }
}

class _Tags extends StatelessWidget {
  const _Tags({required this.booking});

  final Booking booking;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.edgeInsetsScreenHorizontal,
      child: Wrap(
        spacing: 6,
        runSpacing: 6,
        children: booking.destination.tags
            .map((tag) => const TagChip())
            .toList(),
      ),
    );
  }
}

class _Top extends StatelessWidget {
  const _Top({required this.booking});

  final Booking booking;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: Stack(
        fit: StackFit.expand,
        children: [
          _HeaderImage(booking: booking),
          const _Gradient(),
          _Headline(booking: booking),
          const Positioned(
            right: Dimens.padding,
            top: Dimens.padding,
            child: CompassHomeButton(blur: true),
          ),
        ],
      ),
    );
  }
}

class _HeaderImage extends StatelessWidget {
  const _HeaderImage({required this.booking});

  final Booking booking;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.fitWidth,
      imageUrl: booking.destination.imageUrl,
      errorListener: imageErrorListener,
    );
  }
}

class _Gradient extends StatelessWidget {
  const _Gradient();

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.transparent,
            AppColors.onPrimaryContainer,
          ],
        ),
      ),
    );
  }
}

class _Headline extends StatelessWidget {
  const _Headline({required this.booking});

  final Booking booking;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.all(Dimens.padding),
        child: Text(
          booking.destination.name,
          style: TextStyles.headlineLarge.copyWith(color: AppColors.black1),
        ),
      ),
    );
  }
}
