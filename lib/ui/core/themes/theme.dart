import 'package:flutter/widgets.dart';

abstract final class TextStyles {
  static const headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w500,
  );
  static const headlineSmall = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
  static const titleMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static const bodyLarge = TextStyle(fontSize: 18, fontWeight: FontWeight.w400);
  static const bodyMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const bodySmall = TextStyle(fontSize: 14, fontWeight: FontWeight.w400);
  static const labelSmall = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
  );
  static const labelLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
  static const hintStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
}
