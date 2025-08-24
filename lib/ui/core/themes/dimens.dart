import 'package:flutter/widgets.dart';

final class Dimens {
  const Dimens();

  static const padding = 8.0;
  static const paddingHorizontal = 20.0;
  static const paddingVertical = 24.0;
  static const paddingScreenHorizontal = 16.0;
  static const paddingScreenVertical = 16.0;
  static const profilePictureSize = 64.0;

  static const edgeInsetsScreenHorizontal = EdgeInsets.symmetric(
    horizontal: paddingScreenHorizontal,
  );
  static const edgeInsetsScreenSymmetric = EdgeInsets.symmetric(
    horizontal: paddingScreenHorizontal,
    vertical: paddingScreenVertical,
  );

  static const iconWidth = 24.0;
  static const iconHeight = 24.0;
}
